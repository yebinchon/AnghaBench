
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int* registers; } ;
typedef TYPE_1__ RARVirtualMachine ;


 int RARAbsoluteAddressingMode ;
 int RARIndexedAbsoluteAddressingMode (int) ;
 int RARRegisterAddressingMode (int) ;
 int RARRegisterIndirectAddressingMode (int) ;
 int RARVirtualMachineRead32 (TYPE_1__*,int) ;
 int RARVirtualMachineRead8 (TYPE_1__*,int) ;

__attribute__((used)) static uint32_t _RARGetOperand(RARVirtualMachine *vm, uint8_t addressingmode, uint32_t value, bool bytemode)
{
    if (RARRegisterAddressingMode(0) <= addressingmode && addressingmode <= RARRegisterAddressingMode(7)) {
        uint32_t result = vm->registers[addressingmode % 8];
        if (bytemode)
            result = result & 0xFF;
        return result;
    }
    if (RARRegisterIndirectAddressingMode(0) <= addressingmode && addressingmode <= RARRegisterIndirectAddressingMode(7)) {
        if (bytemode)
            return RARVirtualMachineRead8(vm, vm->registers[addressingmode % 8]);
        return RARVirtualMachineRead32(vm, vm->registers[addressingmode % 8]);
    }
    if (RARIndexedAbsoluteAddressingMode(0) <= addressingmode && addressingmode <= RARIndexedAbsoluteAddressingMode(7)) {
        if (bytemode)
            return RARVirtualMachineRead8(vm, value + vm->registers[addressingmode % 8]);
        return RARVirtualMachineRead32(vm, value + vm->registers[addressingmode % 8]);
    }
    if (addressingmode == RARAbsoluteAddressingMode) {
        if (bytemode)
            return RARVirtualMachineRead8(vm, value);
        return RARVirtualMachineRead32(vm, value);
    }

    return value;
}
