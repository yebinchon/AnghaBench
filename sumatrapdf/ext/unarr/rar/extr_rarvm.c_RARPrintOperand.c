
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int RARAbsoluteAddressingMode ;
 int RARImmediateAddressingMode ;
 int RARIndexedAbsoluteAddressingMode (int) ;
 int RARRegisterAddressingMode (int) ;
 int RARRegisterIndirectAddressingMode (int) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void RARPrintOperand(uint8_t addressingmode, uint32_t value)
{
    if (RARRegisterAddressingMode(0) <= addressingmode && addressingmode <= RARRegisterAddressingMode(7))
        printf("r%d", addressingmode % 8);
    else if (RARRegisterIndirectAddressingMode(0) <= addressingmode && addressingmode <= RARRegisterIndirectAddressingMode(7))
        printf("@(r%d)", addressingmode % 8);
    else if (RARIndexedAbsoluteAddressingMode(0) <= addressingmode && addressingmode <= RARIndexedAbsoluteAddressingMode(7))
        printf("@(r%d+$%02x)", addressingmode % 8, value);
    else if (addressingmode == RARAbsoluteAddressingMode)
        printf("@($%02x)", value);
    else if (addressingmode == RARImmediateAddressingMode)
        printf("$%02x", value);
}
