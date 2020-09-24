target extended-remote 10.1.1.1:3333
file .pio/build/LPC1768/firmware.elf
exec-file .pio/build/LPC1768/firmware.elf

# print demangled symbols
set print asm-demangle on

# set backtrace limit to not have infinite backtrace loops
set backtrace limit 32

monitor arm semihosting enable
monitor arm semihosting_fileio enable
monitor halt

break setup
break HardFault_Handler
load

monitor reset
continue
