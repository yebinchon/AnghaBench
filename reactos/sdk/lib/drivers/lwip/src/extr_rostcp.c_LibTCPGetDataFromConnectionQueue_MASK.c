#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pbuf {scalar_t__ tot_len; } ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int /*<<< orphan*/  ReceiveShutdownStatus; scalar_t__ ReceiveShutdown; int /*<<< orphan*/  PacketQueue; } ;
struct TYPE_9__ {scalar_t__ Offset; struct pbuf* p; int /*<<< orphan*/  ListEntry; } ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_1__* PQUEUE_ENTRY ;
typedef  TYPE_2__* PCONNECTION_ENDPOINT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  QueueEntryLookasideList ; 
 int /*<<< orphan*/  STATUS_PENDING ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct pbuf*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pbuf*) ; 

NTSTATUS FUNC10(PCONNECTION_ENDPOINT Connection, PUCHAR RecvBuffer, UINT RecvLen, UINT *Received)
{
    PQUEUE_ENTRY qp;
    struct pbuf* p;
    NTSTATUS Status;
    UINT ReadLength, PayloadLength, Offset, Copied;
    KIRQL OldIrql;

    (*Received) = 0;

    FUNC5(Connection, &OldIrql);

    if (!FUNC3(&Connection->PacketQueue))
    {
        while ((qp = FUNC4(Connection)) != NULL)
        {
            p = qp->p;

            /* Calculate the payload length first */
            PayloadLength = p->tot_len;
            PayloadLength -= qp->Offset;
            Offset = qp->Offset;

            /* Check if we're reading the whole buffer */
            ReadLength = FUNC6(PayloadLength, RecvLen);
            FUNC0(ReadLength != 0);
            if (ReadLength != PayloadLength)
            {
                /* Save this one for later */
                qp->Offset += ReadLength;
                FUNC2(&Connection->PacketQueue, &qp->ListEntry);
                qp = NULL;
            }

            FUNC7(Connection, OldIrql);

            Copied = FUNC8(p, RecvBuffer, ReadLength, Offset);
            FUNC0(Copied == ReadLength);

            FUNC5(Connection, &OldIrql);

            /* Update trackers */
            RecvLen -= ReadLength;
            RecvBuffer += ReadLength;
            (*Received) += ReadLength;

            if (qp != NULL)
            {
                /* Use this special pbuf free callback function because we're outside tcpip thread */
                FUNC9(qp->p);

                FUNC1(&QueueEntryLookasideList, qp);
            }
            else
            {
                /* If we get here, it means we've filled the buffer */
                FUNC0(RecvLen == 0);
            }

            FUNC0((*Received) != 0);
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

    FUNC7(Connection, OldIrql);

    return Status;
}