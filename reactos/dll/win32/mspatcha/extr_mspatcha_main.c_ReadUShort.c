
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_3__ {scalar_t__ Ptr; scalar_t__ Root; scalar_t__ Size; } ;
typedef int * PUSHORT ;
typedef TYPE_1__* PSAFE_READ ;



USHORT ReadUShort(PSAFE_READ pRead)
{
    if (pRead->Ptr + sizeof(USHORT) <= (pRead->Root + pRead->Size))
    {
        USHORT Value = *(PUSHORT)pRead->Ptr;
        pRead->Ptr += sizeof(USHORT);
        return Value;
    }
    pRead->Ptr = pRead->Root + pRead->Size;
    return 0;
}
