
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
 int abs (scalar_t__) ;

__attribute__((used)) static bool rar_execute_filter_rgb(struct RARFilter *filter, RARVirtualMachine *vm)
{
    uint32_t stride = filter->initialregisters[0];
    uint32_t byteoffset = filter->initialregisters[1];
    uint32_t blocklength = filter->initialregisters[4];
    uint8_t *src, *dst;
    uint32_t i, j;

    if (blocklength > RARProgramWorkSize / 2 || stride > blocklength)
        return 0;

    src = &vm->memory[0];
    dst = &vm->memory[blocklength];
    for (i = 0; i < 3; i++) {
        uint8_t byte = 0;
        uint8_t *prev = dst + i - stride;
        for (j = i; j < blocklength; j += 3) {
            if (prev >= dst) {
                uint32_t delta1 = abs(prev[3] - prev[0]);
                uint32_t delta2 = abs(byte - prev[0]);
                uint32_t delta3 = abs(prev[3] - prev[0] + byte - prev[0]);
                if (delta1 > delta2 || delta1 > delta3)
                    byte = delta2 <= delta3 ? prev[3] : prev[0];
            }
            byte -= *src++;
            dst[j] = byte;
            prev += 3;
        }
    }
    for (i = byteoffset; i < blocklength - 2; i += 3) {
        dst[i] += dst[i + 1];
        dst[i + 2] += dst[i + 1];
    }

    filter->filteredblockaddress = blocklength;
    filter->filteredblocklength = blocklength;

    return 1;
}
