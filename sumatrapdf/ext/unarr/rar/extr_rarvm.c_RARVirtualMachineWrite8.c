
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {int * memory; } ;
typedef TYPE_1__ RARVirtualMachine ;


 size_t RARProgramMemoryMask ;

void RARVirtualMachineWrite8(RARVirtualMachine *vm, uint32_t address, uint8_t val)
{
    vm->memory[address & RARProgramMemoryMask] = val;
}
