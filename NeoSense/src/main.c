//-----------------------------------------------------------------------------
// Copyright (c) 2018 Semiconductor Components Industries LLC
// (d/b/a "ON Semiconductor").  All rights reserved.
// This software and/or documentation is licensed by ON Semiconductor under
// limited terms and conditions.  The terms and conditions pertaining to the
// software and/or documentation are available at
// http://www.onsemi.com/site/pdf/ONSEMI_T&C.pdf ("ON Semiconductor Standard
// Terms and Conditions of Sale, Section 8 Software") and if applicable the
// software license agreement.  Do not use this software and/or documentation
// unless you have carefully read and you agree to the limited terms and
// conditions.  By using this software and/or documentation, you agree to the
// limited terms and conditions.
//-----------------------------------------------------------------------------
#include <stdio.h>
#include <math.h>

#include <BDK.h>
#include <BSP_Components.h>
#include <SoftwareTimer.h>

uint32_t k  = 0;

uint32_t strt_time;
uint32_t test;

/** Converts measured linear acceleration data based on sensors dynamic range
 * and prints it to debug terminal.
 *
 * Also turns on RED LED if total acceleration applied to the board is over 1g.
 */
void la_vector_cb(bhy_data_generic_t *data, bhy_virtual_sensor_t sensor)
{
    /* Linear Acceleration sensor values are scaled using dynamic range. */
    uint16_t dyn_range = BHI160_NDOF_GetAccelDynamicRange();

    float x = data->data_vector.x / 32768.0f * dyn_range;
    float y = data->data_vector.y / 32768.0f * dyn_range;
    float z = data->data_vector.z / 32768.0f * dyn_range;
 /*   struct SwTimer tim1;
    struct SwTimer_Duration tim_dur1;

    SwTimer_Initialize(&tim1);
    SwTimer_Start(&tim1);

    SwTimer_GetElapsed(&tim1, &tim_dur1);*/
    if ( z >= 0.2)
    {

    	       	k++;
    	       	if (k > 30)// if breath rate is more than 30 then make the counter 0
    	       	{
    	       		k=0;
    	       	}


    }

    test = HAL_TIME_ELAPSED_SINCE(strt_time);

    if (fabsf(x) + fabsf(y) + fabsf(z) >= 1)
        {
            LED_On(LED_BLUE);
        }
        else
        {
            LED_Off(LED_BLUE);
        }



  	 if ( k < 3 && (test > 10000) )
  	 {
  		 printf("Breath rate is too low");
  		    LED_On(LED_RED);

  		    LED_On(PIN_GIO_SPARE);
  	 }
  	else
  	    {
  	        LED_Off(LED_RED);
  	    }

                 bool button0_pressed = BTN_Read(BTN0);

                  // If the button is pressed, set GIO_SPARE high and reset timer.
            		if (button0_pressed == 1)
          			{
            			printf("Button 0 has been Pressed.\r\n");
            	        strt_time = HAL_Time();
            	        printf("Timer reset.\r\n");
            			LED_On(LED_RED);
            	        printf("GPIO SPARE triggered ON.\r\n");
          			}
    printf("K value: %d",k );
    printf("test value %d", test);
    printf("Linear Accel: x=%.2f g, y=%.2f g, z=%.2f g\r\n", x, y, z);
}


int main(void)
{
    int32_t retval;

    /* Initialize all needed BDK components. */
    BDK_Initialize();


    /* Increase I2C bus speed to 400kHz. */
    HAL_I2C_SetBusSpeed(HAL_I2C_BUS_SPEED_FAST);

    /* Initialize BHI160.
     * This may take a while depending on bus speed because RAM patch has to be
     * uploaded into BHI160 to enable support for BMM150 magnetometer.
     *
     * Set temporary timer to see how long it took to initialize and load the
     * RAM patch.
     */
    LED_On(LED_GREEN);
    {
        printf("Initializing BHI160.\r\n");

        struct SwTimer tim;
        struct SwTimer_Duration tim_dur;

        SwTimer_Initialize(&tim);
        SwTimer_Start(&tim);

        retval = BHI160_NDOF_Initialize();
        ASSERT_DEBUG(retval == BHY_SUCCESS);

        SwTimer_GetElapsed(&tim, &tim_dur);
        SwTimer_Remove(&tim);

        printf("BHI160 initialized in %lu seconds and %lu ns.\r\n",
                tim_dur.seconds, tim_dur.nanoseconds);
    }
     LED_Off(LED_GREEN);
     LED_On(LED_RED);
     HAL_Delay(500);
     LED_Off(LED_RED);


    /* Enable desired virtual sensor outputs. */

    retval = BHI160_NDOF_EnableSensor(BHI160_NDOF_S_LINEAR_ACCELERATION, &la_vector_cb, 50);
    ASSERT_DEBUG(retval == BHY_SUCCESS);

    printf("APP: Entering main loop.\r\n");
    while (1)
    {
        BDK_Schedule();
        /*if (test > 6000) //
        {
        	strt_time = HAL_Time();
        }
*/

        SYS_WAIT_FOR_INTERRUPT;
    }

    return 0;
}

