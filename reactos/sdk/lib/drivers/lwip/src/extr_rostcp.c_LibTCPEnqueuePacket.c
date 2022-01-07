
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pbuf {int dummy; } ;
struct TYPE_5__ {int Lock; int PacketQueue; } ;
struct TYPE_4__ {int ListEntry; scalar_t__ Offset; struct pbuf* p; } ;
typedef TYPE_1__* PQUEUE_ENTRY ;
typedef TYPE_2__* PCONNECTION_ENDPOINT ;


 scalar_t__ ExAllocateFromNPagedLookasideList (int *) ;
 int ExInterlockedInsertTailList (int *,int *,int *) ;
 int QueueEntryLookasideList ;

void LibTCPEnqueuePacket(PCONNECTION_ENDPOINT Connection, struct pbuf *p)
{
    PQUEUE_ENTRY qp;

    qp = (PQUEUE_ENTRY)ExAllocateFromNPagedLookasideList(&QueueEntryLookasideList);
    qp->p = p;
    qp->Offset = 0;

    ExInterlockedInsertTailList(&Connection->PacketQueue, &qp->ListEntry, &Connection->Lock);
}
