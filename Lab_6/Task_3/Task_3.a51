ORG 0000H
            MOV A,P0
            MOV P1,#00H
            SETB P1.0
            CLR P1.0
            MOV R5,#8
            HERE:RRC A
            MOV P1.0,C
            ACALL DELAY
            DJNZ R5,HERE
            SJMP EXIT
             DELAY:  MOV R2,#04H
    HERE3:  MOV R1,#0FFH
    HERE2:  MOV R0,#0FFH
    HERE1:  DJNZ R0,HERE1
            DJNZ R1,HERE2
            DJNZ R2,HERE3
            RET
            SETB P1.0
            CLR P1.0
            EXIT: NOP
            END ;Deeptimaan Banerjee