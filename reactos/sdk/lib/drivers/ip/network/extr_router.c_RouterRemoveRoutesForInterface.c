
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {TYPE_1__* Router; } ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {scalar_t__ Interface; } ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef scalar_t__ PIP_INTERFACE ;
typedef TYPE_3__* PFIB_ENTRY ;
typedef int KIRQL ;


 TYPE_3__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int DestroyFIBE (TYPE_3__*) ;
 TYPE_2__ FIBListHead ;
 int FIBLock ;
 int FIB_ENTRY ;
 int ListEntry ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

VOID RouterRemoveRoutesForInterface(PIP_INTERFACE Interface)
{
    KIRQL OldIrql;
    PLIST_ENTRY CurrentEntry;
    PLIST_ENTRY NextEntry;
    PFIB_ENTRY Current;

    TcpipAcquireSpinLock(&FIBLock, &OldIrql);

    CurrentEntry = FIBListHead.Flink;
    while (CurrentEntry != &FIBListHead) {
        NextEntry = CurrentEntry->Flink;
        Current = CONTAINING_RECORD(CurrentEntry, FIB_ENTRY, ListEntry);

        if (Interface == Current->Router->Interface)
            DestroyFIBE(Current);

        CurrentEntry = NextEntry;
    }

    TcpipReleaseSpinLock(&FIBLock, OldIrql);
}
