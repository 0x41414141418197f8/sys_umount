BITS 64

global _umount

section .rodata
	sucess db "/mnt Unmount Succes :D", 10, 0
	file db "/mnt", 0

section .text

_umount:
	mov rax, 166
	mov rdi, file
	mov rsi, 02
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
