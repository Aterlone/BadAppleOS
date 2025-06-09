; Multiboot header must be in the first 8K of the file
section .multiboot
    align 4
    dd 0x1BADB002       ; magic
    dd 0x00000000       ; flags
    dd -(0x1BADB002 + 0x00000000) ; checksum

section .text
    global _start
_start:
    cli                 ; Clear interrupts
    hlt                 ; Halt the CPU
hang:
    jmp hang            ; Infinite loop

