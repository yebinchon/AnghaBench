
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int registers; } ;
typedef TYPE_1__ RARVirtualMachine ;


 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;

void RARSetVirtualMachineRegisters(RARVirtualMachine *vm, uint32_t registers[8])
{
    if (registers)
        memcpy(vm->registers, registers, sizeof(vm->registers));
    else
        memset(vm->registers, 0, sizeof(vm->registers));
}
