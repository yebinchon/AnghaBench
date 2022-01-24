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
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PNDIS_BUFFER ;
typedef  scalar_t__ PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_PBUFFER ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

UINT FUNC6(
    PCHAR DstData,
    PNDIS_BUFFER SrcBuffer,
    UINT SrcOffset,
    UINT Length)
/*
 * FUNCTION: Copies data from an NDIS buffer chain to a buffer
 * ARGUMENTS:
 *     DstData   = Pointer to destination buffer
 *     SrcBuffer = Pointer to source NDIS buffer
 *     SrcOffset = Source start offset
 *     Length    = Number of bytes to copy
 * RETURNS:
 *     Number of bytes copied to destination buffer
 * NOTES:
 *     The number of bytes copied may be limited by the source
 *     buffer size
 */
{
    UINT BytesCopied, BytesToCopy, SrcSize;
    PCHAR SrcData;

    FUNC5(DEBUG_PBUFFER, ("DstData 0x%X  SrcBuffer 0x%X  SrcOffset 0x%X  Length %d\n",DstData,SrcBuffer, SrcOffset, Length));

    /* Skip SrcOffset bytes in the source buffer chain */
    if (FUNC4(SrcBuffer, SrcOffset, &SrcData, &SrcSize) == -1)
        return 0;

    /* Start copying the data */
    BytesCopied = 0;
    for (;;) {
        BytesToCopy = FUNC0(SrcSize, Length);

        FUNC5(DEBUG_PBUFFER, ("Copying (%d) bytes from 0x%X to 0x%X\n", BytesToCopy, SrcData, DstData));

        FUNC3((PVOID)DstData, (PVOID)SrcData, BytesToCopy);
        BytesCopied += BytesToCopy;
        DstData      = (PCHAR)((ULONG_PTR)DstData + BytesToCopy);

        Length -= BytesToCopy;
        if (Length == 0)
            break;

        SrcSize -= BytesToCopy;
        if (SrcSize == 0) {
            /* No more bytes in source buffer. Proceed to
               the next buffer in the source buffer chain */
            FUNC1(SrcBuffer, &SrcBuffer);
            if (!SrcBuffer)
                break;

            FUNC2(SrcBuffer, (PVOID)&SrcData, &SrcSize);
        }
    }

    return BytesCopied;
}