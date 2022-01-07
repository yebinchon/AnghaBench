
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pbuf {scalar_t__ tot_len; } ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int ReceiveShutdownStatus; scalar_t__ ReceiveShutdown; int PacketQueue; } ;
struct TYPE_9__ {scalar_t__ Offset; struct pbuf* p; int ListEntry; } ;
typedef int PUCHAR ;
typedef TYPE_1__* PQUEUE_ENTRY ;
typedef TYPE_2__* PCONNECTION_ENDPOINT ;
typedef int NTSTATUS ;
typedef int KIRQL ;


 int ASSERT (int) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_1__*) ;
 int InsertHeadList (int *,int *) ;
 int IsListEmpty (int *) ;
 TYPE_1__* LibTCPDequeuePacket (TYPE_2__*) ;
 int LockObject (TYPE_2__*,int *) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int QueueEntryLookasideList ;
 int STATUS_PENDING ;
 int STATUS_SUCCESS ;
 int UnlockObject (TYPE_2__*,int ) ;
 scalar_t__ pbuf_copy_partial (struct pbuf*,int ,scalar_t__,scalar_t__) ;
 int pbuf_free_callback (struct pbuf*) ;

NTSTATUS LibTCPGetDataFromConnectionQueue(PCONNECTION_ENDPOINT Connection, PUCHAR RecvBuffer, UINT RecvLen, UINT *Received)
{
    PQUEUE_ENTRY qp;
    struct pbuf* p;
    NTSTATUS Status;
    UINT ReadLength, PayloadLength, Offset, Copied;
    KIRQL OldIrql;

    (*Received) = 0;

    LockObject(Connection, &OldIrql);

    if (!IsListEmpty(&Connection->PacketQueue))
    {
        while ((qp = LibTCPDequeuePacket(Connection)) != ((void*)0))
        {
            p = qp->p;


            PayloadLength = p->tot_len;
            PayloadLength -= qp->Offset;
            Offset = qp->Offset;


            ReadLength = MIN(PayloadLength, RecvLen);
            ASSERT(ReadLength != 0);
            if (ReadLength != PayloadLength)
            {

                qp->Offset += ReadLength;
                InsertHeadList(&Connection->PacketQueue, &qp->ListEntry);
                qp = ((void*)0);
            }

            UnlockObject(Connection, OldIrql);

            Copied = pbuf_copy_partial(p, RecvBuffer, ReadLength, Offset);
            ASSERT(Copied == ReadLength);

            LockObject(Connection, &OldIrql);


            RecvLen -= ReadLength;
            RecvBuffer += ReadLength;
            (*Received) += ReadLength;

            if (qp != ((void*)0))
            {

                pbuf_free_callback(qp->p);

                ExFreeToNPagedLookasideList(&QueueEntryLookasideList, qp);
            }
            else
            {

                ASSERT(RecvLen == 0);
            }

            ASSERT((*Received) != 0);
            Status = STATUS_SUCCESS;

            if (!RecvLen)
                break;
        }
    }
    else
    {
        if (Connection->ReceiveShutdown)
            Status = Connection->ReceiveShutdownStatus;
        else
            Status = STATUS_PENDING;
    }

    UnlockObject(Connection, OldIrql);

    return Status;
}
