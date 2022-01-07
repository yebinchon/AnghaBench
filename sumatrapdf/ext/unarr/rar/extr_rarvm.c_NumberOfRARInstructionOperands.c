
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int* InstructionFlags ;
 size_t RARNumberOfInstructions ;
 int RAROperandsFlag ;

int NumberOfRARInstructionOperands(uint8_t instruction)
{
    if (instruction >= RARNumberOfInstructions)
        return 0;
    return InstructionFlags[instruction] & RAROperandsFlag;
}
