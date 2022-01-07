
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* Flink; } ;
struct TYPE_13__ {TYPE_1__ ReceiveQueue; } ;
struct TYPE_12__ {scalar_t__ Irp; int ListEntry; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef scalar_t__ PIRP ;
typedef TYPE_2__* PDATAGRAM_RECEIVE_REQUEST ;
typedef TYPE_3__* PADDRESS_FILE ;
typedef int KIRQL ;
typedef int BOOLEAN ;


 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,TYPE_1__*) ;
 int DATAGRAM_RECEIVE_REQUEST ;
 int DATAGRAM_RECV_TAG ;
 int ExFreePoolWithTag (TYPE_2__*,int ) ;
 int FALSE ;
 int LockObject (TYPE_3__*,int *) ;
 int MAX_TRACE ;
 int RemoveEntryList (int *) ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 int UnlockObject (TYPE_3__*,int ) ;

BOOLEAN DGRemoveIRP(
    PADDRESS_FILE AddrFile,
    PIRP Irp)
{
    PLIST_ENTRY ListEntry;
    PDATAGRAM_RECEIVE_REQUEST ReceiveRequest;
    KIRQL OldIrql;
    BOOLEAN Found = FALSE;

    TI_DbgPrint(MAX_TRACE, ("Called (Cancel IRP %08x for file %08x).\n",
                            Irp, AddrFile));

    LockObject(AddrFile, &OldIrql);

    for( ListEntry = AddrFile->ReceiveQueue.Flink;
         ListEntry != &AddrFile->ReceiveQueue;
         ListEntry = ListEntry->Flink )
    {
        ReceiveRequest = CONTAINING_RECORD
            (ListEntry, DATAGRAM_RECEIVE_REQUEST, ListEntry);

        TI_DbgPrint(MAX_TRACE, ("Request: %08x?\n", ReceiveRequest));

        if (ReceiveRequest->Irp == Irp)
        {
            RemoveEntryList(&ReceiveRequest->ListEntry);
            ExFreePoolWithTag(ReceiveRequest, DATAGRAM_RECV_TAG);
            Found = TRUE;
            break;
        }
    }

    UnlockObject(AddrFile, OldIrql);

    TI_DbgPrint(MAX_TRACE, ("Done.\n"));

    return Found;
}
