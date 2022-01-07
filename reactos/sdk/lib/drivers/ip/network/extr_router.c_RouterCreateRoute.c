
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {int Netmask; int NetworkAddress; TYPE_1__* Router; } ;
struct TYPE_12__ {struct TYPE_12__* Flink; } ;
struct TYPE_11__ {scalar_t__ Interface; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef scalar_t__ PIP_INTERFACE ;
typedef int PIP_ADDRESS ;
typedef TYPE_3__* PFIB_ENTRY ;
typedef int KIRQL ;


 int A2S (int ) ;
 scalar_t__ AddrIsEqual (int ,int *) ;
 TYPE_3__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int DEBUG_ROUTER ;
 TYPE_2__ FIBListHead ;
 int FIBLock ;
 int FIB_ENTRY ;
 int ListEntry ;
 TYPE_1__* NBFindOrCreateNeighbor (scalar_t__,int ,int ) ;
 TYPE_3__* RouterAddRoute (int ,int ,TYPE_1__*,int ) ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

PFIB_ENTRY RouterCreateRoute(
    PIP_ADDRESS NetworkAddress,
    PIP_ADDRESS Netmask,
    PIP_ADDRESS RouterAddress,
    PIP_INTERFACE Interface,
    UINT Metric)
{
    KIRQL OldIrql;
    PLIST_ENTRY CurrentEntry;
    PLIST_ENTRY NextEntry;
    PFIB_ENTRY Current;
    PNEIGHBOR_CACHE_ENTRY NCE;

    TcpipAcquireSpinLock(&FIBLock, &OldIrql);

    CurrentEntry = FIBListHead.Flink;
    while (CurrentEntry != &FIBListHead) {
        NextEntry = CurrentEntry->Flink;
        Current = CONTAINING_RECORD(CurrentEntry, FIB_ENTRY, ListEntry);

        NCE = Current->Router;

        if(AddrIsEqual(NetworkAddress, &Current->NetworkAddress) &&
           AddrIsEqual(Netmask, &Current->Netmask) &&
           NCE->Interface == Interface)
        {
            TI_DbgPrint(DEBUG_ROUTER,("Attempting to add duplicate route to %s\n", A2S(NetworkAddress)));
            TcpipReleaseSpinLock(&FIBLock, OldIrql);
            return ((void*)0);
        }

        CurrentEntry = NextEntry;
    }

    TcpipReleaseSpinLock(&FIBLock, OldIrql);


    NCE = NBFindOrCreateNeighbor(Interface, RouterAddress, TRUE);

    if (!NCE) {

        return ((void*)0);
    }

    return RouterAddRoute(NetworkAddress, Netmask, NCE, Metric);
}
