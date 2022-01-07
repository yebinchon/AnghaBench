
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ RamSize; scalar_t__ RamBase; } ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PNIC_ADAPTER ;
typedef int BOOLEAN ;


 int FALSE ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int NDIS_DbgPrint (int ,char*) ;
 scalar_t__ NICTestAddress (TYPE_1__*,int) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN NICTestRAM(
    PNIC_ADAPTER Adapter)
{
    ULONG_PTR Base;

    NDIS_DbgPrint(MAX_TRACE, ("Called.\n"));


    for (Base = 0x0400; Base < 0x10000; Base += 0x0400) {
        if (NICTestAddress(Adapter, Base))
            break;
    }

    if (Base == 0x10000) {

        NDIS_DbgPrint(MIN_TRACE, ("No RAM found on board.\n"));
        return FALSE;
    }

    Adapter->RamBase = (PUCHAR)Base;


    for (; Base < 0x10000; Base += 0x0400) {
        if (!NICTestAddress(Adapter, Base))
            break;
    }

    Adapter->RamSize = (UINT)(Base - (ULONG_PTR)Adapter->RamBase);

    NDIS_DbgPrint(MID_TRACE, ("RAM is at (0x%X). Size is (0x%X).\n",
        Adapter->RamBase, Adapter->RamSize));

    return TRUE;
}
