#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_8__ {int AllocStrategy; scalar_t__ CurrentPsp; int /*<<< orphan*/  LastErrorCode; } ;
struct TYPE_7__ {scalar_t__ FirstMcb; int UmbChainStart; scalar_t__ UmbLinked; } ;
struct TYPE_6__ {scalar_t__ OwnerPsp; scalar_t__ Size; char BlockType; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__* PDOS_MCB ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
#define  DOS_ALLOC_BEST_FIT 130 
#define  DOS_ALLOC_FIRST_FIT 129 
 int DOS_ALLOC_HIGH ; 
 int DOS_ALLOC_HIGH_LOW ; 
#define  DOS_ALLOC_LAST_FIT 128 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR_ARENA_TRASHED ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 (int) ; 
 TYPE_4__* Sda ; 
 TYPE_3__* SysVars ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

WORD FUNC7(WORD Size, WORD *MaxAvailable)
{
    WORD Result = 0, Segment = SysVars->FirstMcb, MaxSize = 0;
    PDOS_MCB CurrentMcb;
    BOOLEAN SearchUmb = FALSE;

    FUNC0("DosAllocateMemory: Size 0x%04X\n", Size);

    FUNC3();

    if (SysVars->UmbLinked && SysVars->UmbChainStart != 0xFFFF &&
        (Sda->AllocStrategy & (DOS_ALLOC_HIGH | DOS_ALLOC_HIGH_LOW)))
    {
        /* Search UMB first */
        Segment = SysVars->UmbChainStart;
        SearchUmb = TRUE;
    }

    while (TRUE)
    {
        /* Get a pointer to the MCB */
        CurrentMcb = FUNC5(Segment);

        /* Make sure it's valid */
        if (!FUNC6(CurrentMcb))
        {
            FUNC1("The DOS memory arena is corrupted!\n");
            Sda->LastErrorCode = ERROR_ARENA_TRASHED;
            return 0;
        }

        /* Only check free blocks */
        if (CurrentMcb->OwnerPsp != 0) goto Next;

        /* Combine this free block with adjoining free blocks */
        FUNC2(Segment);

        /* Update the maximum block size */
        if (CurrentMcb->Size > MaxSize) MaxSize = CurrentMcb->Size;

        /* Check if this block is big enough */
        if (CurrentMcb->Size < Size) goto Next;

        switch (Sda->AllocStrategy & ~(DOS_ALLOC_HIGH | DOS_ALLOC_HIGH_LOW))
        {
            case DOS_ALLOC_FIRST_FIT:
            {
                /* For first fit, stop immediately */
                Result = Segment;
                goto Done;
            }

            case DOS_ALLOC_BEST_FIT:
            {
                /* For best fit, update the smallest block found so far */
                if ((Result == 0) || (CurrentMcb->Size < FUNC5(Result)->Size))
                {
                    Result = Segment;
                }

                break;
            }

            case DOS_ALLOC_LAST_FIT:
            {
                /* For last fit, make the current block the result, but keep searching */
                Result = Segment;
                break;
            }
        }

Next:
        /* If this was the last MCB in the chain, quit */
        if (CurrentMcb->BlockType == 'Z')
        {
            /* Check if nothing was found while searching through UMBs */
            if ((Result == 0) && SearchUmb && (Sda->AllocStrategy & DOS_ALLOC_HIGH_LOW))
            {
                /* Search low memory */
                Segment = SysVars->FirstMcb;
                SearchUmb = FALSE;
                continue;
            }

            break;
        }

        /* Otherwise, update the segment and continue */
        Segment += CurrentMcb->Size + 1;
    }

Done:
    FUNC3();

    /* If we didn't find a free block, bail out */
    if (Result == 0)
    {
        FUNC0("DosAllocateMemory FAILED. Maximum available: 0x%04X\n", MaxSize);
        Sda->LastErrorCode = ERROR_NOT_ENOUGH_MEMORY;
        if (MaxAvailable) *MaxAvailable = MaxSize;
        return 0;
    }

    /* Get a pointer to the MCB */
    CurrentMcb = FUNC5(Result);

    /* Check if the block is larger than requested */
    if (CurrentMcb->Size > Size)
    {
        /* It is, split it into two blocks */
        if ((Sda->AllocStrategy & ~(DOS_ALLOC_HIGH | DOS_ALLOC_HIGH_LOW)) != DOS_ALLOC_LAST_FIT)
        {
            PDOS_MCB NextMcb = FUNC5(Result + Size + 1);

            /* Initialize the new MCB structure */
            NextMcb->BlockType = CurrentMcb->BlockType;
            NextMcb->Size = CurrentMcb->Size - Size - 1;
            NextMcb->OwnerPsp = 0;

            /* Update the current block */
            CurrentMcb->BlockType = 'M';
            CurrentMcb->Size = Size;
        }
        else
        {
            /* Save the location of the current MCB */
            PDOS_MCB PreviousMcb = CurrentMcb;

            /* Move the current MCB higher */
            Result += CurrentMcb->Size - Size;
            CurrentMcb = FUNC5(Result);

            /* Initialize the new MCB structure */
            CurrentMcb->BlockType = PreviousMcb->BlockType;
            CurrentMcb->Size = Size;
            CurrentMcb->OwnerPsp = 0;

            /* Update the previous block */
            PreviousMcb->BlockType = 'M';
            PreviousMcb->Size -= Size + 1;
        }
    }

    /* Take ownership of the block */
    CurrentMcb->OwnerPsp = Sda->CurrentPsp;
    FUNC4(CurrentMcb->Name, FUNC5(Sda->CurrentPsp - 1)->Name, sizeof(CurrentMcb->Name));

    FUNC3();

    /* Return the segment of the data portion of the block */
    return Result + 1;
}