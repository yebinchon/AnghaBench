
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t USHORT ;
typedef int ULONG_PTR ;
struct TYPE_3__ {int * UserData; scalar_t__ FullUnique; int * KernelData; } ;
typedef int * PVOID ;
typedef TYPE_1__* PGDI_TABLE_ENTRY ;
typedef scalar_t__ HGDIOBJ ;


 TYPE_1__* GdiHandleTable ;

PVOID
GetHandleUserData(HGDIOBJ hobj)
{
    USHORT Index = (ULONG_PTR)hobj;
    PGDI_TABLE_ENTRY pentry = &GdiHandleTable[Index];

    if (pentry->KernelData == ((void*)0) ||
        pentry->KernelData < (PVOID)0x80000000 ||
        (USHORT)pentry->FullUnique != (USHORT)((ULONG_PTR)hobj >> 16))
    {
        return ((void*)0);
    }

    return pentry->UserData;
}
