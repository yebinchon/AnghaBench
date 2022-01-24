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
typedef  scalar_t__ WORD ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {scalar_t__ Address; scalar_t__ Size; scalar_t__ LockCount; } ;
typedef  TYPE_1__* PXMS_HANDLE ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AllocBitmap ; 
 int /*<<< orphan*/  FreeBlocks ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ XMS_ADDRESS ; 
 scalar_t__ XMS_BLOCKS ; 
 scalar_t__ XMS_BLOCK_SIZE ; 
 int /*<<< orphan*/  XMS_STATUS_INVALID_HANDLE ; 
 int /*<<< orphan*/  XMS_STATUS_LOCKED ; 
 int /*<<< orphan*/  XMS_STATUS_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  XMS_STATUS_SUCCESS ; 

__attribute__((used)) static UCHAR FUNC8(WORD Handle, WORD NewSize)
{
    DWORD BlockNumber;
    PXMS_HANDLE HandleEntry = FUNC0(Handle);
    DWORD CurrentIndex = 0;
    ULONG RunStart;
    ULONG RunSize;

    if (!FUNC7(HandleEntry))
        return XMS_STATUS_INVALID_HANDLE;

    if (HandleEntry->LockCount)
        return XMS_STATUS_LOCKED;

    /* Get the block number */
    BlockNumber = (HandleEntry->Address - XMS_ADDRESS) / XMS_BLOCK_SIZE;

    if (NewSize < HandleEntry->Size)
    {
        /* Just reduce the size of this block */
        FUNC3(&AllocBitmap, BlockNumber + NewSize, HandleEntry->Size - NewSize);
        FreeBlocks += HandleEntry->Size - NewSize;
        HandleEntry->Size = NewSize;
    }
    else if (NewSize > HandleEntry->Size)
    {
        /* Check if we can expand in-place */
        if (FUNC2(&AllocBitmap,
                            BlockNumber + HandleEntry->Size,
                            NewSize - HandleEntry->Size))
        {
            /* Just increase the size of this block */
            FUNC6(&AllocBitmap,
                       BlockNumber + HandleEntry->Size,
                       NewSize - HandleEntry->Size);
            FreeBlocks -= NewSize - HandleEntry->Size;
            HandleEntry->Size = NewSize;

            /* We're done */
            return XMS_STATUS_SUCCESS;
        }

        /* Deallocate the current block range */
        FUNC3(&AllocBitmap, BlockNumber, HandleEntry->Size);

        /* Find a new place for this block */
        while (CurrentIndex < XMS_BLOCKS)
        {
            RunSize = FUNC4(&AllocBitmap, CurrentIndex, &RunStart);
            if (RunSize == 0) break;

            if (RunSize >= NewSize)
            {
                /* Allocate the new range */
                FUNC6(&AllocBitmap, RunStart, NewSize);

                /* Move the data to the new location */
                FUNC5((PVOID)FUNC1(XMS_ADDRESS + RunStart * XMS_BLOCK_SIZE),
                              (PVOID)FUNC1(HandleEntry->Address),
                              HandleEntry->Size * XMS_BLOCK_SIZE);

                /* Update the handle entry */
                HandleEntry->Address = XMS_ADDRESS + RunStart * XMS_BLOCK_SIZE;
                HandleEntry->Size = NewSize;

                /* Update the free block counter */
                FreeBlocks -= NewSize - HandleEntry->Size;

                return XMS_STATUS_SUCCESS;
            }

            /* Keep searching */
            CurrentIndex = RunStart + RunSize;
        }

        /* Restore the old block range */
        FUNC6(&AllocBitmap, BlockNumber, HandleEntry->Size);
        return XMS_STATUS_OUT_OF_MEMORY;
    }
    
    return XMS_STATUS_SUCCESS;
}