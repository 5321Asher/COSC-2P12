.data
x:	.word 1 #first operand
y:	.word 2 #second operand
z:	.word   #for result

.text
main:
	lw $t1, x #x -> t1
	lw $t2, y #y -> t2
	add $t3, $t1, $t2 #t1 + t2 -> t3
	