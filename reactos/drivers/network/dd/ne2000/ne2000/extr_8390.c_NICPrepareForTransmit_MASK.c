#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_6__ {int /*<<< orphan*/ * Next; } ;
struct TYPE_5__ {int TXFree; int TXCurrent; int TXNext; int TXCount; int /*<<< orphan*/  MiniportAdapterHandle; int /*<<< orphan*/ * TXQueueTail; int /*<<< orphan*/ * TXQueueHead; } ;
typedef  TYPE_1__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/ * PNDIS_PACKET ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int DRIVER_BLOCK_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN FUNC5(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Prepares a packet for transmission
 * ARGUMENTS:
 *     Adapter = Pointer to adapter information
 * NOTES:
 *     There must be at least one packet in the transmit queue
 * RETURNS:
 *     TRUE if a packet was prepared, FALSE if not
 */
{
    UINT Length;
    UINT BufferCount;
    PNDIS_PACKET Packet;

    FUNC0(MAX_TRACE, ("Called.\n"));

    /* Calculate number of buffers needed to transmit packet */
    FUNC3(Adapter->TXQueueHead,
                    NULL,
                    NULL,
                    NULL,
                    &Length);

    BufferCount = (Length + DRIVER_BLOCK_SIZE - 1) / DRIVER_BLOCK_SIZE;

    if (BufferCount > Adapter->TXFree) {
        FUNC0(MID_TRACE, ("No transmit resources. Have (%d) buffers, need (%d).\n",
            Adapter->TXFree, BufferCount));
        /* We don't have the resources to transmit this packet right now */
        return FALSE;
    }

    /* Write the packet to the card */
    FUNC1(Adapter);

    /* If the NIC is not transmitting, reset the current transmit pointer */
    if (Adapter->TXCurrent == -1)
        Adapter->TXCurrent = Adapter->TXNext;

    Adapter->TXNext  = (Adapter->TXNext + BufferCount) % Adapter->TXCount;
    Adapter->TXFree -= BufferCount;

    /* Remove the packet from the queue */
    Packet = Adapter->TXQueueHead;
    Adapter->TXQueueHead = FUNC4(Packet)->Next;

    if (Packet == Adapter->TXQueueTail)
        Adapter->TXQueueTail = NULL;

    /* Assume the transmit went well */
    FUNC2(Adapter->MiniportAdapterHandle,
                      Packet,
                      NDIS_STATUS_SUCCESS);

    return TRUE;
}