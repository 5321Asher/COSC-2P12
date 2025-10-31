.data
x:	.word 10
y:	.word 20
z:	.word 30
res:	.word

.text
main:
	#load variables
	lw $t1, x
	lw $t2, y
	lw $t3, z

	#add variables
	add $t0, $t1, $t2
	add $t0, $t0, $t3
	
	#divide by 3
	li $t4, 3
	div $t0, $t4	
	mflo $t0 #get quotient
	
	#move result to mem
	move $a0, $t0
	li $v0, 1
	syscall

	#exit	
	li $v0, 10
	syscall