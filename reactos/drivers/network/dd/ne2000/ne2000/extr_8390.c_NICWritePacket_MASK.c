#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG_PTR ;
typedef  int ULONG ;
typedef  int UINT ;
struct TYPE_4__ {int TXStart; int TXCount; size_t TXNext; int /*<<< orphan*/ * TXSize; int /*<<< orphan*/  TXQueueHead; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_1__* PNIC_ADAPTER ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;

/* Variables and functions */
 int DRIVER_BLOCK_SIZE ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID FUNC5(
    PNIC_ADAPTER Adapter)
/*
 * FUNCTION: Writes a full packet to the transmit buffer ring
 * ARGUMENTS:
 *     Adapter  = Pointer to adapter information
 * NOTES:
 *     There must be enough free buffers available in the transmit buffer ring.
 *     The packet is taken from the head of the transmit queue and the position
 *     into the transmit buffer ring is taken from TXNext
 */
{
    PNDIS_BUFFER SrcBuffer;
    UINT BytesToCopy, SrcSize, DstSize;
    PUCHAR SrcData;
    ULONG DstData;
    UINT TXStart;
    UINT TXStop;

    FUNC0(MAX_TRACE, ("Called.\n"));

    TXStart = Adapter->TXStart * DRIVER_BLOCK_SIZE;
    TXStop  = (Adapter->TXStart + Adapter->TXCount) * DRIVER_BLOCK_SIZE;

    FUNC4(Adapter->TXQueueHead,
                    NULL,
                    NULL,
                    &SrcBuffer,
                    &Adapter->TXSize[Adapter->TXNext]);

    FUNC0(MID_TRACE, ("Packet (%d) is now size (%d).\n",
        Adapter->TXNext,
        Adapter->TXSize[Adapter->TXNext]));

    FUNC3(SrcBuffer, (PVOID)&SrcData, &SrcSize);

    DstData = TXStart + Adapter->TXNext * DRIVER_BLOCK_SIZE;
    DstSize = TXStop - DstData;

    /* Start copying the data */
    for (;;) {
        BytesToCopy = (SrcSize < DstSize)? SrcSize : DstSize;

        FUNC1(Adapter, DstData, SrcData, BytesToCopy);

        SrcData = (PUCHAR)((ULONG_PTR) SrcData + BytesToCopy);
        SrcSize            -= BytesToCopy;
        DstData            += BytesToCopy;
        DstSize            -= BytesToCopy;

        if (SrcSize == 0) {
            /* No more bytes in source buffer. Proceed to
               the next buffer in the source buffer chain */
            FUNC2(SrcBuffer, &SrcBuffer);
            if (!SrcBuffer)
                break;

            FUNC3(SrcBuffer, (PVOID)&SrcData, &SrcSize);
        }

        if (DstSize == 0) {
            /* Wrap around the end of the transmit buffer ring */
            DstData = TXStart;
            DstSize = Adapter->TXCount * DRIVER_BLOCK_SIZE;
        }
    }
}