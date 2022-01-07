
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PacketQueue; } ;
typedef int * PQUEUE_ENTRY ;
typedef int PLIST_ENTRY ;
typedef TYPE_1__* PCONNECTION_ENDPOINT ;


 int * CONTAINING_RECORD (int ,int ,int ) ;
 scalar_t__ IsListEmpty (int *) ;
 int ListEntry ;
 int QUEUE_ENTRY ;
 int RemoveHeadList (int *) ;

PQUEUE_ENTRY LibTCPDequeuePacket(PCONNECTION_ENDPOINT Connection)
{
    PLIST_ENTRY Entry;
    PQUEUE_ENTRY qp = ((void*)0);

    if (IsListEmpty(&Connection->PacketQueue)) return ((void*)0);

    Entry = RemoveHeadList(&Connection->PacketQueue);

    qp = CONTAINING_RECORD(Entry, QUEUE_ENTRY, ListEntry);

    return qp;
}
