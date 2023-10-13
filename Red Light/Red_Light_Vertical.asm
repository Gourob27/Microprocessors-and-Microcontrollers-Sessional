CODE SEGMENT 
ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
;
PPIC_C EQU 06H
PPIC   EQU 04H
PPIB   EQU 02H
PPIA   EQU 00H
    ;
    ORG 0000H;staring er address 0,0 theke memeory load hobe
    MOV Al,10000000B;control word
    OUT PPIC_C,AL
    
    MOV AL,00000000B
    OUT PPIB,AL;Row er value 00000000B diye sob row active korlam

    MOV AL,10000000B
    ;

L1: OUT PPIA,AL
    CALL DELAY
    ROL AL,1

    JMP L1

DELAY: MOV CX,11111111111111B
TIMER1: NOP
    NOP
    NOP
    NOP
    LOOP TIMER1
    RET
    ;
CODE ENDS
END