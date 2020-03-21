################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include RTE/Utility/subdir.mk
-include RTE/Device/RSL10/subdir.mk
-include RTE/Device/subdir.mk
-include RTE/Components/subdir.mk
-include RTE/Board_Support/subdir.mk
-include RTE/BLE/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
NeoSense.hex \

SECONDARY_SIZE += \
NeoSense.siz \


# All Target
all: NeoSense.elf secondary-outputs

# Tool invocations
NeoSense.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM Cross C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mlittle-endian -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wshadow  -g -T "C:\Users\Vishwas\Documents\ON\NeoSense\RTE\Device\RSL10\sections.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"NeoSense.map" --specs=nano.specs -u _printf_float --specs=nosys.specs -o "NeoSense.elf" -Wl,--start-group $(OBJS) $(USER_OBJS) $(LIBS) -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

NeoSense.hex: NeoSense.elf
	@echo 'Invoking: GNU ARM Cross Create Flash Image'
	arm-none-eabi-objcopy -O ihex "NeoSense.elf"  "NeoSense.hex"
	@echo 'Finished building: $@'
	@echo ' '

NeoSense.siz: NeoSense.elf
	@echo 'Invoking: GNU ARM Cross Print Size'
	arm-none-eabi-size --format=berkeley "NeoSense.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) NeoSense.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
