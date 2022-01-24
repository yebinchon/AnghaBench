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
typedef  scalar_t__ ULONGLONG ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ UCHAR ;
typedef  scalar_t__* PULONG ;
typedef  scalar_t__* PUCHAR ;
typedef  int /*<<< orphan*/  PLARGE_MCB ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 

NTSTATUS
FUNC5(PLARGE_MCB DataRunsMCB,
                          PUCHAR RunBuffer,
                          ULONG MaxBufferSize,
                          PULONG UsedBufferSize)
{
    NTSTATUS Status = STATUS_SUCCESS;
    ULONG RunBufferOffset = 0;
    LONGLONG  DataRunOffset;
    ULONGLONG LastLCN = 0;
    LONGLONG Vbn, Lbn, Count;
    ULONG i;


    FUNC0("\t[Vbn, Lbn, Count]\n");

    // convert each mcb entry to a data run
    for (i = 0; FUNC2(DataRunsMCB, i, &Vbn, &Lbn, &Count); i++)
    {
        UCHAR DataRunOffsetSize = 0;
        UCHAR DataRunLengthSize = 0;
        UCHAR ControlByte = 0;

        // [vbn, lbn, count]
        FUNC0("\t[%I64d, %I64d,%I64d]\n", Vbn, Lbn, Count);

        // TODO: check for holes and convert to sparse runs
        DataRunOffset = Lbn - LastLCN;
        LastLCN = Lbn;

        // now we need to determine how to represent DataRunOffset with the minimum number of bytes
        FUNC0("Determining how many bytes needed to represent %I64x\n", DataRunOffset);
        DataRunOffsetSize = FUNC3(DataRunOffset, TRUE);
        FUNC0("%d bytes needed.\n", DataRunOffsetSize);

        // determine how to represent DataRunLengthSize with the minimum number of bytes
        FUNC0("Determining how many bytes needed to represent %I64x\n", Count);
        DataRunLengthSize = FUNC3(Count, TRUE);
        FUNC0("%d bytes needed.\n", DataRunLengthSize);

        // ensure the next data run + end marker would be <= Max buffer size
        if (RunBufferOffset + 2 + DataRunLengthSize + DataRunOffsetSize > MaxBufferSize)
        {
            Status = STATUS_BUFFER_TOO_SMALL;
            FUNC1("FIXME: Ran out of room in buffer for data runs!\n");
            break;
        }

        // pack and copy the control byte
        ControlByte = (DataRunOffsetSize << 4) + DataRunLengthSize;
        RunBuffer[RunBufferOffset++] = ControlByte;

        // copy DataRunLength
        FUNC4(RunBuffer + RunBufferOffset, &Count, DataRunLengthSize);
        RunBufferOffset += DataRunLengthSize;

        // copy DataRunOffset
        FUNC4(RunBuffer + RunBufferOffset, &DataRunOffset, DataRunOffsetSize);
        RunBufferOffset += DataRunOffsetSize;
    }

    // End of data runs
    RunBuffer[RunBufferOffset++] = 0;

    *UsedBufferSize = RunBufferOffset;
    FUNC0("New Size of DataRuns: %ld\n", *UsedBufferSize);

    return Status;
}