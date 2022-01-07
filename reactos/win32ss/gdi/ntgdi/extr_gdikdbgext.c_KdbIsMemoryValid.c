
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PUCHAR ;
typedef int BOOLEAN ;


 scalar_t__ ALIGN_DOWN_POINTER_BY (scalar_t__,scalar_t__) ;
 int FALSE ;
 int MmIsAddressValid (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int TRUE ;

BOOLEAN
KdbIsMemoryValid(PVOID pvBase, ULONG cjSize)
{
    PUCHAR pjAddress;

    pjAddress = ALIGN_DOWN_POINTER_BY(pvBase, PAGE_SIZE);

    while (pjAddress < (PUCHAR)pvBase + cjSize)
    {
        if (!MmIsAddressValid(pjAddress)) return FALSE;
        pjAddress += PAGE_SIZE;
    }

    return TRUE;
}
