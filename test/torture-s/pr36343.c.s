	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr36343.c"
	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	i32.store	$discard=, 0($0), $pop0
	return
	.endfunc
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar

	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	f32
	.local  	i32, f32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$3=, __stack_pointer
	i32.load	$3=, 0($3)
	i32.const	$4=, 16
	i32.sub 	$7=, $3, $4
	i32.const	$4=, __stack_pointer
	i32.store	$7=, 0($4), $7
	i32.const	$push0=, 0
	i32.store	$discard=, 12($7), $pop0
	i32.const	$6=, 12
	i32.add 	$6=, $7, $6
	i32.const	$7=, 8
	i32.add 	$7=, $7, $7
	i32.select	$1=, $0, $6, $7
	i32.const	$push1=, 1065353216
	i32.store	$discard=, 8($7), $pop1
	call    	bar@FUNCTION, $1
	block
	block
	i32.const	$push4=, 0
	i32.eq  	$push5=, $0, $pop4
	br_if   	$pop5, 0        # 0: down to label1
# BB#1:                                 # %if.then2
	i32.load	$push2=, 0($1)
	i32.load	$push3=, 0($pop2)
	f32.convert_s/i32	$2=, $pop3
	br      	1               # 1: down to label0
.LBB1_2:                                # %if.end3
	end_block                       # label1:
	f32.load	$2=, 8($7)
.LBB1_3:                                # %cleanup
	end_block                       # label0:
	i32.const	$5=, 16
	i32.add 	$7=, $7, $5
	i32.const	$5=, __stack_pointer
	i32.store	$7=, 0($5), $7
	return  	$2
	.endfunc
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	block
	f32.call	$push0=, foo@FUNCTION, $0
	f32.const	$push1=, 0x0p0
	f32.ne  	$push2=, $pop0, $pop1
	br_if   	$pop2, 0        # 0: down to label2
# BB#1:                                 # %if.end
	return  	$0
.LBB2_2:                                # %if.then
	end_block                       # label2:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end2:
	.size	main, .Lfunc_end2-main


	.ident	"clang version 3.9.0 "
	.section	".note.GNU-stack","",@progbits
