
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Ptr; scalar_t__ Root; scalar_t__ Size; } ;
typedef TYPE_1__* PSAFE_READ ;
typedef int * PDWORD ;
typedef int DWORD ;



DWORD ReadDWord(PSAFE_READ pRead)
{
    if (pRead->Ptr + sizeof(DWORD) <= (pRead->Root + pRead->Size))
    {
        DWORD Value = *(PDWORD)pRead->Ptr;
        pRead->Ptr += sizeof(DWORD);
        return Value;
    }
    pRead->Ptr = pRead->Root + pRead->Size;
    return 0;
}
