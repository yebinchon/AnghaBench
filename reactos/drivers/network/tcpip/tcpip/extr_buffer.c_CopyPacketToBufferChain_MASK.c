#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PNDIS_PACKET ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;
typedef  scalar_t__ PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_PBUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

UINT FUNC6(
    PNDIS_BUFFER DstBuffer,
    UINT DstOffset,
    PNDIS_PACKET SrcPacket,
    UINT SrcOffset,
    UINT Length)
/*
 * FUNCTION: Copies data from an NDIS packet to an NDIS buffer chain
 * ARGUMENTS:
 *     DstBuffer = Pointer to destination NDIS buffer
 *     DstOffset = Destination start offset
 *     SrcPacket = Pointer to source NDIS packet
 *     SrcOffset = Source start offset
 *     Length    = Number of bytes to copy
 * RETURNS:
 *     Number of bytes copied to destination buffer
 * NOTES:
 *     The number of bytes copied may be limited by the source and
 *     destination buffer sizes
 */
{
    PNDIS_BUFFER SrcBuffer;
    PCHAR DstData, SrcData;
    UINT DstSize, SrcSize;
    UINT Count, Total;

    FUNC5(DEBUG_PBUFFER, ("DstBuffer (0x%X)  DstOffset (0x%X)  SrcPacket (0x%X)  SrcOffset (0x%X)  Length (%d)\n", DstBuffer, DstOffset, SrcPacket, SrcOffset, Length));

    /* Skip DstOffset bytes in the destination buffer chain */
    FUNC2(DstBuffer, (PVOID)&DstData, &DstSize);
    if (FUNC4(DstBuffer, DstOffset, &DstData, &DstSize) == -1)
        return 0;

    /* Skip SrcOffset bytes in the source packet */
    FUNC0(SrcPacket, &SrcBuffer, (PVOID)&SrcData, &SrcSize, &Total);
    if (FUNC4(SrcBuffer, SrcOffset, &SrcData, &SrcSize) == -1)
        return 0;

    /* Copy the data */
    for (Total = 0;;) {
        /* Find out how many bytes we can copy at one time */
        if (Length < SrcSize)
            Count = Length;
        else
            Count = SrcSize;
        if (DstSize < Count)
            Count = DstSize;

        FUNC3((PVOID)DstData, (PVOID)SrcData, Count);

        Total  += Count;
        Length -= Count;
        if (Length == 0)
            break;

        DstSize -= Count;
        if (DstSize == 0) {
            /* No more bytes in destination buffer. Proceed to
               the next buffer in the destination buffer chain */
            FUNC1(DstBuffer, &DstBuffer);
            if (!DstBuffer)
                break;

            FUNC2(DstBuffer, (PVOID)&DstData, &DstSize);
        }

        SrcSize -= Count;
        if (SrcSize == 0) {
            /* No more bytes in source buffer. Proceed to
               the next buffer in the source buffer chain */
            FUNC1(SrcBuffer, &SrcBuffer);
            if (!SrcBuffer)
                break;

            FUNC2(SrcBuffer, (PVOID)&SrcData, &SrcSize);
        }
    }

    return Total;
}