
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!

    li s0, 0          

    beq a1, zero, done  

loop:
    lw t0, 0(a0)      

    beq t0, a2, update_s0  
    
    addi a0, a0, 4    
    addi a1, a1, -1   
    bnez a1, loop     

    j done            

update_s0:
    add s0, zero, a0
    addi a0, a0, 4    
    addi a1, a1, -1   
    bnez a1, loop 
     
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
