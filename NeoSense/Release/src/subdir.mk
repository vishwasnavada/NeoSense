################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/CSN_PB.c \
../src/main.c 

OBJS += \
./src/CSN_PB.o \
./src/main.o 

C_DEPS += \
./src/CSN_PB.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -D_RTE_ -I"C:\Users\Vishwas\Documents\ON\NeoSense\include" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/Utility/SEGGER/RTT/config" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/Utility/SEGGER/RTT/include" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/api" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/ble" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/components" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/components/bhy1_firmware" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/hal" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/hal/cmsis_driver" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/ics" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/ics/node" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/target/RSL10_SENSE" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/source/firmware/BoardSupport/bdk/template" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/bb" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/ble" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/ble/profiles" -I"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/kernel" -I"C:\Users\Vishwas\Documents\ON\NeoSense/RTE" -I"C:\Users\Vishwas\Documents\ON\NeoSense/RTE/Board_Support" -I"C:\Users\Vishwas\Documents\ON\NeoSense/RTE/Device/RSL10" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/Utility/SEGGER/RTT/config" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/Utility/SEGGER/RTT/include" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/api" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/ble" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/components" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/components/bhy1_firmware" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/hal" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/hal/cmsis_driver" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/ics" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/ics/node" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/include/target/RSL10_SENSE" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/BDK/1.12.1/source/firmware/BoardSupport/bdk/template" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/bb" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/ble" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/ble/profiles" -isystem"C:/Users/Vishwas/ON_Semiconductor/PACK/ONSemiconductor/RSL10/3.2.608/include/kernel" -isystem"C:\Users\Vishwas\Documents\ON\NeoSense/RTE" -isystem"C:\Users\Vishwas\Documents\ON\NeoSense/RTE/Board_Support" -isystem"C:\Users\Vishwas\Documents\ON\NeoSense/RTE/Device/RSL10" -include"C:\Users\Vishwas\Documents\ON\NeoSense/RTE/Pre_Include_Global.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


