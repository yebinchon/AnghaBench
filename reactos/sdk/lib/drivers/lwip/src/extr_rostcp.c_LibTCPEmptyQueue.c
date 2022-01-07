
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int PacketQueue; } ;
struct TYPE_8__ {int p; } ;
typedef TYPE_1__* PQUEUE_ENTRY ;
typedef int PLIST_ENTRY ;
typedef TYPE_2__* PCONNECTION_ENDPOINT ;


 TYPE_1__* CONTAINING_RECORD (int ,int ,int ) ;
 int DereferenceObject (TYPE_2__*) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_1__*) ;
 int IsListEmpty (int *) ;
 int ListEntry ;
 int QUEUE_ENTRY ;
 int QueueEntryLookasideList ;
 int ReferenceObject (TYPE_2__*) ;
 int RemoveHeadList (int *) ;
 int pbuf_free (int ) ;

__attribute__((used)) static
void
LibTCPEmptyQueue(PCONNECTION_ENDPOINT Connection)
{
    PLIST_ENTRY Entry;
    PQUEUE_ENTRY qp = ((void*)0);

    ReferenceObject(Connection);

    while (!IsListEmpty(&Connection->PacketQueue))
    {
        Entry = RemoveHeadList(&Connection->PacketQueue);
        qp = CONTAINING_RECORD(Entry, QUEUE_ENTRY, ListEntry);


        pbuf_free(qp->p);

        ExFreeToNPagedLookasideList(&QueueEntryLookasideList, qp);
    }

    DereferenceObject(Connection);
}
