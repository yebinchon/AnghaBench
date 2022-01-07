
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_8__ {scalar_t__ Port; scalar_t__ Protocol; scalar_t__ Sharers; } ;
struct TYPE_7__ {struct TYPE_7__* Flink; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef int PIP_ADDRESS ;
typedef TYPE_2__* PADDRESS_FILE ;
typedef int KIRQL ;


 int ADDRESS_FILE ;
 int ASSERT (int) ;
 TYPE_1__ AddressFileListHead ;
 int AddressFileListLock ;
 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int InterlockedIncrement (scalar_t__*) ;
 int ListEntry ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

PADDRESS_FILE AddrFindShared(
    PIP_ADDRESS BindAddress,
    USHORT Port,
    USHORT Protocol)
{
    PLIST_ENTRY CurrentEntry;
    KIRQL OldIrql;
    PADDRESS_FILE Current = ((void*)0);

    TcpipAcquireSpinLock(&AddressFileListLock, &OldIrql);

    CurrentEntry = AddressFileListHead.Flink;
    while (CurrentEntry != &AddressFileListHead) {
        Current = CONTAINING_RECORD(CurrentEntry, ADDRESS_FILE, ListEntry);


        if ((Current->Port == Port) &&
            (Current->Protocol == Protocol))
        {

            ASSERT(Current->Sharers != 0);
            InterlockedIncrement(&Current->Sharers);
            break;
        }

        CurrentEntry = CurrentEntry->Flink;
        Current = ((void*)0);
    }

    TcpipReleaseSpinLock(&AddressFileListLock, OldIrql);

    return Current;
}
