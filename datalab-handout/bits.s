	.file	"bits.c"
	.text
	.globl	oddBits
	.type	oddBits, @function
oddBits:
.LFB0:
	.cfi_startproc
	movl	$-1431655766, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	oddBits, .-oddBits
	.globl	isTmin
	.type	isTmin, @function
isTmin:
.LFB1:
	.cfi_startproc
	movl	%edi, %eax
	addl	%edi, %eax
	sete	%al
	testl	%edi, %edi
	setne	%dl
	andl	%edx, %eax
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	isTmin, .-isTmin
	.globl	bitXor
	.type	bitXor, @function
bitXor:
.LFB2:
	.cfi_startproc
	movl	%esi, %eax
	xorl	%edi, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	bitXor, .-bitXor
	.globl	conditional
	.type	conditional, @function
conditional:
.LFB3:
	.cfi_startproc
	testl	%edi, %edi
	setne	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %eax
	negl	%eax
	andl	%esi, %eax
	subl	$1, %ecx
	andl	%ecx, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	conditional, .-conditional
	.globl	greatestBitPos
	.type	greatestBitPos, @function
greatestBitPos:
.LFB4:
	.cfi_startproc
	movl	%edi, %edx
	andl	$-2147483648, %edx
	movl	%edi, %eax
	sarl	%eax
	orl	%eax, %edi
	movl	%edi, %eax
	sarl	$2, %eax
	orl	%edi, %eax
	movl	%eax, %edi
	sarl	$4, %edi
	orl	%edi, %eax
	movl	%eax, %edi
	sarl	$8, %edi
	orl	%eax, %edi
	movl	%edi, %eax
	sarl	$16, %eax
	orl	%eax, %edi
	movl	%edi, %eax
	notl	%eax
	sarl	%eax
	andl	%edi, %eax
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE4:
	.size	greatestBitPos, .-greatestBitPos
	.globl	divpwr2
	.type	divpwr2, @function
divpwr2:
.LFB5:
	.cfi_startproc
	movl	%esi, %ecx
	movl	%edi, %eax
	sarl	$31, %eax
	movl	$1, %edx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%edx, %eax
	addl	%edi, %eax
	sarl	%cl, %eax
	ret
	.cfi_endproc
.LFE5:
	.size	divpwr2, .-divpwr2
	.globl	isNonNegative
	.type	isNonNegative, @function
isNonNegative:
.LFB6:
	.cfi_startproc
	movl	%edi, %eax
	notl	%eax
	shrl	$31, %eax
	ret
	.cfi_endproc
.LFE6:
	.size	isNonNegative, .-isNonNegative
	.globl	satMul2
	.type	satMul2, @function
satMul2:
.LFB7:
	.cfi_startproc
	leal	(%rdi,%rdi), %edx
	movl	%edi, %eax
	sarl	$31, %eax
	xorl	%edx, %edi
	sarl	$31, %edi
	xorl	$2147483647, %eax
	xorl	%edx, %eax
	andl	%edi, %eax
	xorl	%edx, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	satMul2, .-satMul2
	.globl	isLess
	.type	isLess, @function
isLess:
.LFB8:
	.cfi_startproc
	cmpl	%esi, %edi
	sete	%r8b
	movzbl	%r8b, %r8d
	movl	%edi, %ecx
	sarl	$31, %ecx
	movl	%esi, %edx
	notl	%edx
	movl	%edx, %eax
	shrl	$31, %eax
	andl	%eax, %ecx
	movl	%edi, %eax
	notl	%eax
	shrl	$31, %eax
	sarl	$31, %esi
	andl	%eax, %esi
	addl	%edi, %edx
	sarl	$31, %edx
	orl	%esi, %r8d
	sete	%al
	movzbl	%al, %eax
	orl	%ecx, %edx
	andl	%edx, %eax
	ret
	.cfi_endproc
.LFE8:
	.size	isLess, .-isLess
	.globl	isAsciiDigit
	.type	isAsciiDigit, @function
isAsciiDigit:
.LFB9:
	.cfi_startproc
	leal	-58(%rdi), %eax
	shrl	$31, %eax
	movl	$47, %edx
	subl	%edi, %edx
	shrl	$31, %edx
	andl	%edx, %eax
	ret
	.cfi_endproc
.LFE9:
	.size	isAsciiDigit, .-isAsciiDigit
	.globl	trueThreeFourths
	.type	trueThreeFourths, @function
trueThreeFourths:
.LFB10:
	.cfi_startproc
	movl	%edi, %eax
	sarl	$31, %eax
	movl	%edi, %edx
	andl	$3, %edx
	sarl	$2, %edi
	leal	(%rdi,%rdi,2), %ecx
	leal	(%rdx,%rdx,2), %edx
	andl	$3, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	addl	%ecx, %eax
	ret
	.cfi_endproc
.LFE10:
	.size	trueThreeFourths, .-trueThreeFourths
	.globl	ilog2
	.type	ilog2, @function
ilog2:
.LFB11:
	.cfi_startproc
	movl	%edi, %eax
	sarl	$16, %eax
	testl	%eax, %eax
	je	.L13
	movl	$16, %eax
.L13:
	movl	%eax, %ecx
	sarl	%cl, %edi
	movl	%edi, %ecx
	sarl	$8, %ecx
	testl	%ecx, %ecx
	je	.L14
	movl	$8, %ecx
.L14:
	addl	%ecx, %eax
	sarl	%cl, %edi
	movl	%edi, %ecx
	sarl	$4, %ecx
	testl	%ecx, %ecx
	je	.L15
	movl	$4, %ecx
.L15:
	addl	%ecx, %eax
	sarl	%cl, %edi
	movl	%edi, %ecx
	sarl	$2, %ecx
	testl	%ecx, %ecx
	jne	.L17
.L16:
	addl	%ecx, %eax
	sarl	%cl, %edi
	shrl	%edi
	setne	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
	ret
.L17:
	movl	$2, %ecx
	jmp	.L16
	.cfi_endproc
.LFE11:
	.size	ilog2, .-ilog2
	.globl	float_neg
	.type	float_neg, @function
float_neg:
.LFB12:
	.cfi_startproc
	movl	%edi, %eax
	shrl	$23, %eax
	notl	%eax
	testb	%al, %al
	jne	.L19
	movl	%edi, %eax
	sall	$9, %eax
	testl	%eax, %eax
	jne	.L21
.L19:
	leal	-2147483648(%rdi), %eax
	ret
.L21:
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE12:
	.size	float_neg, .-float_neg
	.globl	float_i2f
	.type	float_i2f, @function
float_i2f:
.LFB13:
	.cfi_startproc
	movl	%edi, %eax
	andl	$-2147483648, %eax
	testl	%edi, %edi
	js	.L31
.L23:
	cmpl	$-2147483648, %edi
	je	.L29
	testl	%edi, %edi
	je	.L30
	movl	$158, %edx
	jmp	.L25
.L31:
	negl	%edi
	jmp	.L23
.L26:
	addl	%edi, %edi
	subl	$1, %edx
.L25:
	testl	%edi, %edi
	jns	.L26
	movl	%edi, %esi
	sarl	$8, %esi
	movl	%esi, %ecx
	andl	$8388607, %ecx
	testb	$-128, %dil
	je	.L27
	testb	$127, %dil
	je	.L32
.L28:
	addl	$1, %ecx
.L27:
	sall	$23, %edx
	addl	%edx, %eax
	addl	%ecx, %eax
	ret
.L32:
	testb	$1, %sil
	je	.L27
	jmp	.L28
.L29:
	movl	$-822083584, %eax
	ret
.L30:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE13:
	.size	float_i2f, .-float_i2f
	.globl	float_twice
	.type	float_twice, @function
float_twice:
.LFB14:
	.cfi_startproc
	movl	%edi, %eax
	testl	%edi, %edi
	sete	%cl
	cmpl	$-2147483648, %edi
	sete	%dl
	orb	%dl, %cl
	jne	.L34
	movl	%edi, %edx
	shrl	$23, %edx
	movl	%edx, %ecx
	notl	%ecx
	testb	%cl, %cl
	je	.L34
	testb	%dl, %dl
	je	.L36
	addl	$8388608, %eax
.L34:
	rep ret
.L36:
	movl	%edi, %edx
	andl	$-2147483648, %edx
	addl	%eax, %eax
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	float_twice, .-float_twice
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
