	.file	"demo.c"
	.section	.rodata
.LC0:
	.string	"welcome to c"
	.text
.globl main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ecx
	subl	$4, %esp
	movl	$.LC0, (%esp)
	call	printf
	addl	$4, %esp
	popl	%ecx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.1.2 20070925 (Red Hat 4.1.2-33)"
	.section	.note.GNU-stack,"",@progbits
