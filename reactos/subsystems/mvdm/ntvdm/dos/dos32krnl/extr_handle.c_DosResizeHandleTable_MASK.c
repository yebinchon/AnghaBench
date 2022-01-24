#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_5__ {scalar_t__ CurrentPsp; } ;
struct TYPE_4__ {scalar_t__ HandleTableSize; void* HandleTablePtr; int /*<<< orphan*/  HandleTable; } ;
typedef  TYPE_1__* PDOS_PSP ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ DEFAULT_JFT_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 void* FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* Sda ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC10(WORD NewSize)
{
    PDOS_PSP PspBlock;
    LPBYTE HandleTable;
    WORD Segment;

    /* Get the PSP block */
    PspBlock = FUNC8(Sda->CurrentPsp);

    if (NewSize == PspBlock->HandleTableSize)
    {
        /* No change */
        return TRUE;
    }

    if (PspBlock->HandleTableSize > DEFAULT_JFT_SIZE)
    {
        /* Get the segment of the current table */
        Segment = (FUNC5(PspBlock->HandleTablePtr) >> 4) + FUNC4(PspBlock->HandleTablePtr);

        if (NewSize <= DEFAULT_JFT_SIZE)
        {
            /* Get the current handle table */
            HandleTable = FUNC3(PspBlock->HandleTablePtr);

            /* Copy it to the PSP */
            FUNC7(PspBlock->HandleTable, HandleTable, NewSize);

            /* Free the memory */
            FUNC1(Segment);

            /* Update the handle table pointer and size */
            PspBlock->HandleTableSize = NewSize;
            PspBlock->HandleTablePtr = FUNC6(0x18, Sda->CurrentPsp);
        }
        else
        {
            /* Resize the memory */
            if (!FUNC2(Segment, NewSize, NULL))
            {
                /* Unable to resize, try allocating it somewhere else */
                Segment = FUNC0(NewSize, NULL);
                if (Segment == 0) return FALSE;

                /* Get the new handle table */
                HandleTable = FUNC9(Segment, 0);

                /* Copy the handles to the new table */
                FUNC7(HandleTable,
                              FUNC3(PspBlock->HandleTablePtr),
                              PspBlock->HandleTableSize);

                /* Update the handle table pointer */
                PspBlock->HandleTablePtr = FUNC6(0, Segment);
            }

            /* Update the handle table size */
            PspBlock->HandleTableSize = NewSize;
        }
    }
    else if (NewSize > DEFAULT_JFT_SIZE)
    {
        Segment = FUNC0(NewSize, NULL);
        if (Segment == 0) return FALSE;

        /* Get the new handle table */
        HandleTable = FUNC9(Segment, 0);

        /* Copy the handles from the PSP to the new table */
        FUNC7(HandleTable,
                      FUNC3(PspBlock->HandleTablePtr),
                      PspBlock->HandleTableSize);

        /* Update the handle table pointer and size */
        PspBlock->HandleTableSize = NewSize;
        PspBlock->HandleTablePtr = FUNC6(0, Segment);
    }

    return TRUE;
}