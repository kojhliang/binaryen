	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20060102-1.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 31
	i32.shr_s	$push1=, $0, $pop0
	i32.const	$push2=, 1
	i32.or  	$push3=, $pop1, $pop2
	return  	$pop3
	.endfunc
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.load	$1=, one($0)
	i32.load	$4=, one($0)
	i32.const	$2=, 31
	i32.const	$3=, 1
	block
	i32.shr_s	$push0=, $1, $2
	i32.or  	$push1=, $pop0, $3
	i32.sub 	$push2=, $0, $4
	i32.shr_s	$push3=, $pop2, $2
	i32.or  	$push4=, $pop3, $3
	i32.eq  	$push5=, $pop1, $pop4
	br_if   	$pop5, 0        # 0: down to label0
# BB#1:                                 # %if.end
	return  	$0
.LBB1_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.hidden	one                     # @one
	.type	one,@object
	.section	.data.one,"aw",@progbits
	.globl	one
	.align	2
one:
	.int32	1                       # 0x1
	.size	one, 4


	.ident	"clang version 3.9.0 "
	.section	".note.GNU-stack","",@progbits
