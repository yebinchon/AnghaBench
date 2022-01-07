
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int NetworkAddress; TYPE_1__* Router; } ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {int Address; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int PIP_ADDRESS ;
typedef TYPE_3__* PFIB_ENTRY ;
typedef int NTSTATUS ;
typedef int KIRQL ;
typedef scalar_t__ BOOLEAN ;


 int A2S (int ) ;
 scalar_t__ AddrIsEqual (int *,int ) ;
 TYPE_3__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int DEBUG_ROUTER ;
 int DestroyFIBE (TYPE_3__*) ;
 scalar_t__ FALSE ;
 TYPE_2__ FIBListHead ;
 int FIBLock ;
 int FIB_ENTRY ;
 int ListEntry ;
 int RouterDumpRoutes () ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TI_DbgPrint (int ,char*) ;
 scalar_t__ TRUE ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

NTSTATUS RouterRemoveRoute(PIP_ADDRESS Target, PIP_ADDRESS Router)
{
    KIRQL OldIrql;
    PLIST_ENTRY CurrentEntry;
    PLIST_ENTRY NextEntry;
    PFIB_ENTRY Current;
    BOOLEAN Found = FALSE;
    PNEIGHBOR_CACHE_ENTRY NCE;

    TI_DbgPrint(DEBUG_ROUTER, ("Called\n"));
    TI_DbgPrint(DEBUG_ROUTER, ("Deleting Route From: %s\n", A2S(Router)));
    TI_DbgPrint(DEBUG_ROUTER, ("                 To: %s\n", A2S(Target)));

    TcpipAcquireSpinLock(&FIBLock, &OldIrql);

    RouterDumpRoutes();

    CurrentEntry = FIBListHead.Flink;
    while (CurrentEntry != &FIBListHead) {
        NextEntry = CurrentEntry->Flink;
 Current = CONTAINING_RECORD(CurrentEntry, FIB_ENTRY, ListEntry);

        NCE = Current->Router;

 if( AddrIsEqual( &Current->NetworkAddress, Target ) &&
     AddrIsEqual( &NCE->Address, Router ) ) {
     Found = TRUE;
     break;
 }

 Current = ((void*)0);
        CurrentEntry = NextEntry;
    }

    if( Found ) {
        TI_DbgPrint(DEBUG_ROUTER, ("Deleting route\n"));
        DestroyFIBE( Current );
    }

    RouterDumpRoutes();

    TcpipReleaseSpinLock(&FIBLock, OldIrql);

    TI_DbgPrint(DEBUG_ROUTER, ("Leaving\n"));

    return Found ? STATUS_SUCCESS : STATUS_UNSUCCESSFUL;
}
