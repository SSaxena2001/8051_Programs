;Write an 8051 ALP to implement a half adder logic such that P0.0 (B) 
;and P0.1 (A) be two inputs while P2.0 (carry) and P2.1 (sum) be outputs. 

ORG 0000H
CLR P2.0
CLR P2.1
SETB P0.1
SETB P0.0
MOV C,P0.0
ANL C,P0.1
MOV P2.0,C
MOV C,P0.0
JC INPUT1
MOV A,#00H
BACK1:MOV C,P0.1
JC INPUT2
MOV R0,#00H
BACK2: XRL A,R0
MOV C,ACC.0
MOV P2.1,C
SJMP END1
INPUT1: MOV A,#01H
SJMP BACK1
INPUT2: MOV R0,#01H
SJMP BACK2
END1:NOP
END ;Deeptimaan Banerjee