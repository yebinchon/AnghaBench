
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_8__ {int AllocStrategy; scalar_t__ CurrentPsp; int LastErrorCode; } ;
struct TYPE_7__ {scalar_t__ FirstMcb; int UmbChainStart; scalar_t__ UmbLinked; } ;
struct TYPE_6__ {scalar_t__ OwnerPsp; scalar_t__ Size; char BlockType; int Name; } ;
typedef TYPE_1__* PDOS_MCB ;
typedef scalar_t__ BOOLEAN ;




 int DOS_ALLOC_HIGH ;
 int DOS_ALLOC_HIGH_LOW ;

 int DPRINT (char*,scalar_t__) ;
 int DPRINT1 (char*) ;
 int DosCombineFreeBlocks (scalar_t__) ;
 int DosMemValidate () ;
 int ERROR_ARENA_TRASHED ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ FALSE ;
 int RtlCopyMemory (int ,int ,int) ;
 TYPE_1__* SEGMENT_TO_MCB (int) ;
 TYPE_4__* Sda ;
 TYPE_3__* SysVars ;
 scalar_t__ TRUE ;
 int ValidateMcb (TYPE_1__*) ;

WORD DosAllocateMemory(WORD Size, WORD *MaxAvailable)
{
    WORD Result = 0, Segment = SysVars->FirstMcb, MaxSize = 0;
    PDOS_MCB CurrentMcb;
    BOOLEAN SearchUmb = FALSE;

    DPRINT("DosAllocateMemory: Size 0x%04X\n", Size);

    DosMemValidate();

    if (SysVars->UmbLinked && SysVars->UmbChainStart != 0xFFFF &&
        (Sda->AllocStrategy & (DOS_ALLOC_HIGH | DOS_ALLOC_HIGH_LOW)))
    {

        Segment = SysVars->UmbChainStart;
        SearchUmb = TRUE;
    }

    while (TRUE)
    {

        CurrentMcb = SEGMENT_TO_MCB(Segment);


        if (!ValidateMcb(CurrentMcb))
        {
            DPRINT1("The DOS memory arena is corrupted!\n");
            Sda->LastErrorCode = ERROR_ARENA_TRASHED;
            return 0;
        }


        if (CurrentMcb->OwnerPsp != 0) goto Next;


        DosCombineFreeBlocks(Segment);


        if (CurrentMcb->Size > MaxSize) MaxSize = CurrentMcb->Size;


        if (CurrentMcb->Size < Size) goto Next;

        switch (Sda->AllocStrategy & ~(DOS_ALLOC_HIGH | DOS_ALLOC_HIGH_LOW))
        {
            case 129:
            {

                Result = Segment;
                goto Done;
            }

            case 130:
            {

                if ((Result == 0) || (CurrentMcb->Size < SEGMENT_TO_MCB(Result)->Size))
                {
                    Result = Segment;
                }

                break;
            }

            case 128:
            {

                Result = Segment;
                break;
            }
        }

Next:

        if (CurrentMcb->BlockType == 'Z')
        {

            if ((Result == 0) && SearchUmb && (Sda->AllocStrategy & DOS_ALLOC_HIGH_LOW))
            {

                Segment = SysVars->FirstMcb;
                SearchUmb = FALSE;
                continue;
            }

            break;
        }


        Segment += CurrentMcb->Size + 1;
    }

Done:
    DosMemValidate();


    if (Result == 0)
    {
        DPRINT("DosAllocateMemory FAILED. Maximum available: 0x%04X\n", MaxSize);
        Sda->LastErrorCode = ERROR_NOT_ENOUGH_MEMORY;
        if (MaxAvailable) *MaxAvailable = MaxSize;
        return 0;
    }


    CurrentMcb = SEGMENT_TO_MCB(Result);


    if (CurrentMcb->Size > Size)
    {

        if ((Sda->AllocStrategy & ~(DOS_ALLOC_HIGH | DOS_ALLOC_HIGH_LOW)) != 128)
        {
            PDOS_MCB NextMcb = SEGMENT_TO_MCB(Result + Size + 1);


            NextMcb->BlockType = CurrentMcb->BlockType;
            NextMcb->Size = CurrentMcb->Size - Size - 1;
            NextMcb->OwnerPsp = 0;


            CurrentMcb->BlockType = 'M';
            CurrentMcb->Size = Size;
        }
        else
        {

            PDOS_MCB PreviousMcb = CurrentMcb;


            Result += CurrentMcb->Size - Size;
            CurrentMcb = SEGMENT_TO_MCB(Result);


            CurrentMcb->BlockType = PreviousMcb->BlockType;
            CurrentMcb->Size = Size;
            CurrentMcb->OwnerPsp = 0;


            PreviousMcb->BlockType = 'M';
            PreviousMcb->Size -= Size + 1;
        }
    }


    CurrentMcb->OwnerPsp = Sda->CurrentPsp;
    RtlCopyMemory(CurrentMcb->Name, SEGMENT_TO_MCB(Sda->CurrentPsp - 1)->Name, sizeof(CurrentMcb->Name));

    DosMemValidate();


    return Result + 1;
}
