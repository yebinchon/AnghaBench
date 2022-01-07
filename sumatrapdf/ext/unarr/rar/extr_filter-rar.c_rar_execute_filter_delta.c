
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct RARFilter {int* initialregisters; int filteredblockaddress; int filteredblocklength; } ;
struct TYPE_3__ {scalar_t__* memory; } ;
typedef TYPE_1__ RARVirtualMachine ;


 int RARProgramWorkSize ;

__attribute__((used)) static bool rar_execute_filter_delta(struct RARFilter *filter, RARVirtualMachine *vm)
{
    uint32_t length = filter->initialregisters[4];
    uint32_t numchannels = filter->initialregisters[0];
    uint8_t *src, *dst;
    uint32_t i, idx;

    if (length > RARProgramWorkSize / 2)
        return 0;

    src = &vm->memory[0];
    dst = &vm->memory[length];
    for (i = 0; i < numchannels; i++) {
        uint8_t lastbyte = 0;
        for (idx = i; idx < length; idx += numchannels)
            lastbyte = dst[idx] = lastbyte - *src++;
    }

    filter->filteredblockaddress = length;
    filter->filteredblocklength = length;

    return 1;
}
