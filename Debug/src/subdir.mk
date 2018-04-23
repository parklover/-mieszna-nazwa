################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/delay.c \
../src/ff.c \
../src/main.c \
../src/spi_sd.c \
../src/syscalls.c \
../src/system_stm32f4xx.c 

OBJS += \
./src/delay.o \
./src/ff.o \
./src/main.o \
./src/spi_sd.o \
./src/syscalls.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/delay.d \
./src/ff.d \
./src/main.d \
./src/spi_sd.d \
./src/syscalls.d \
./src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F407VGTx -DSTM32F4DISCOVERY -DDEBUG -DSTM32F40XX -DSTM32F40_41xxx -DUSE_STDPERIPH_DRIVER -D_USE_STRFUNC -I"D:/STM32_projekty/WR3/-mieszna-nazwa/Utilities" -I"D:/STM32_projekty/WR3/-mieszna-nazwa/StdPeriph_Driver/inc" -I"D:/STM32_projekty/WR3/-mieszna-nazwa/inc" -I"D:/STM32_projekty/WR3/-mieszna-nazwa/CMSIS/device" -I"D:/STM32_projekty/WR3/-mieszna-nazwa/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


