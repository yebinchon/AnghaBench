
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {struct TYPE_13__* Flink; } ;
struct TYPE_14__ {TYPE_2__ ListenRequest; } ;
struct TYPE_12__ {int Entry; TYPE_3__* AssociatedEndpoint; } ;
typedef TYPE_1__* PTDI_BUCKET ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef TYPE_3__* PCONNECTION_ENDPOINT ;
typedef int KIRQL ;
typedef int BOOLEAN ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int DereferenceObject (TYPE_3__*) ;
 int Entry ;
 int ExFreeToNPagedLookasideList (int *,TYPE_1__*) ;
 int FALSE ;
 int LockObject (TYPE_3__*,int *) ;
 int RemoveEntryList (int *) ;
 int TDI_BUCKET ;
 int TRUE ;
 int TdiBucketLookasideList ;
 int UnlockObject (TYPE_3__*,int ) ;

BOOLEAN TCPAbortListenForSocket
( PCONNECTION_ENDPOINT Listener,
    PCONNECTION_ENDPOINT Connection)
{
    PLIST_ENTRY ListEntry;
    PTDI_BUCKET Bucket;
    KIRQL OldIrql;
    BOOLEAN Found = FALSE;

    LockObject(Listener, &OldIrql);

    ListEntry = Listener->ListenRequest.Flink;
    while (ListEntry != &Listener->ListenRequest)
    {
        Bucket = CONTAINING_RECORD(ListEntry, TDI_BUCKET, Entry);

        if (Bucket->AssociatedEndpoint == Connection)
        {
            DereferenceObject(Bucket->AssociatedEndpoint);
            RemoveEntryList( &Bucket->Entry );
            ExFreeToNPagedLookasideList(&TdiBucketLookasideList, Bucket);
            Found = TRUE;
            break;
        }

        ListEntry = ListEntry->Flink;
    }

    UnlockObject(Listener, OldIrql);

    return Found;
}
