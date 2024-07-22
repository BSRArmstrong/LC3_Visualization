;;   This program exercises all LC3 Instructions
;;   BSRA, July 2024.  


    .ORIG x3000  
    LEA  R4, GlobalVariables    ;; R4 points to the Global variables area, exercise LEA
    LD   R6, BaseOfStackp1      ;; R6 is the Stack Pointer,  BaseOfStackp1 is the top word of memory "plus one" 
    LDR  R1, R4, 00             ;; Load R1 from Value01, working data 
    LDR  R2, R4, 01             ;; Load R2 from Value02, working data 
    
GoBack:     
    AND R0, R1, R2              ;; Exercise AND, register mode  
    AND R0, R1, x05             ;; Exercise AND, immediate mode 
    NOT R0, R2                  ;; Exercise NOT 
    
    BRzp    GoBack              ;; Exercise BR, no branch 
    
    LEA     R3, GoForward       ;; Prepare for JMP 
    JMP     R3                  ;; Exercise JMP 
    
    .FILL   x0000               ;; NOP
GoForward: 
    JSR     MySubroutine        ;; Exercise JSR     
    LEA     R1, MySubroutine    ;; Prepare for JSRR 
    JSRR    R1                  ;; Exercise JSRR 
    
    LDI     R1, Address01       ;; Exercise LDI 
    
    ST      R0, Result01        ;; Exercise ST     
    STI     R2, Address02       ;; Exercise STI 
    STR     R3, R4, #4          ;; Store to Global Variables area  
    
    TRAP    x25                 ;; Exercise TRAP, and properly terminate program 
    
    .FILL   x0000               ;; NOP, mark a boundary in the code
    
MySubroutine:                   ;; Example subroutine 
    ADD R6, R6, -4              ;; Allocate 4 words on the stack 
    STR R7, R6, 03              ;; Push R7, the return address 
    STR R5, R6, 02              ;; Push R5, the caller's frame pointer 
    ADD R5, R6, 01              ;; Setup Stack Frame for MySubroutine()
	
    Add R1, R1, R1              ;; The work of the subroutine 
    STR R1, R5, 00              ;; Store the result in the stack frame 
    
    LDR R5, R6, 02              ;; Pull R5, 
    LDR R7, R6, 03              ;; Pull R7
    ADD R6, R6, 04              ;; Free 4 words on stack           
    RET 


BaseOfStackp1:    .FILL   x3040     ;; Base of the stack, plus one
GlobalVariables:  
Value01:    .FILL   x0003           ;; Initialization data     
Value02:    .FILL   x004C
Address01:  .FILL   Value01         ;; Pointers, for LDI, STI
Address02:  .FILL   Result01
Result01:   .FILL   x0000           ;; More space in Global Variables area
            .FILL   x0000
AString:    .STRINGZ   "LC3_Vis"    ;; An example string

      .END 
