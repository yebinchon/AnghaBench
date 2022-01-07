
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct RARFilter {int* initialregisters; int filteredblocklength; scalar_t__ filteredblockaddress; } ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int* memory; } ;
typedef TYPE_1__ RARVirtualMachine ;


 int RARProgramWorkSize ;
 int RARVirtualMachineRead32 (TYPE_1__*,int) ;
 int RARVirtualMachineWrite32 (TYPE_1__*,int,int) ;

__attribute__((used)) static bool rar_execute_filter_e8(struct RARFilter *filter, RARVirtualMachine *vm, size_t pos, bool e9also)
{
    uint32_t length = filter->initialregisters[4];
    uint32_t filesize = 0x1000000;
    uint32_t i;

    if (length > RARProgramWorkSize || length < 4)
        return 0;

    for (i = 0; i <= length - 5; i++) {
        if (vm->memory[i] == 0xE8 || (e9also && vm->memory[i] == 0xE9)) {
            uint32_t currpos = (uint32_t)pos + i + 1;
            int32_t address = (int32_t)RARVirtualMachineRead32(vm, i + 1);
            if (address < 0 && currpos >= (uint32_t)-address)
                RARVirtualMachineWrite32(vm, i + 1, address + filesize);
            else if (address >= 0 && (uint32_t)address < filesize)
                RARVirtualMachineWrite32(vm, i + 1, address - currpos);
            i += 4;
        }
    }

    filter->filteredblockaddress = 0;
    filter->filteredblocklength = length;

    return 1;
}
