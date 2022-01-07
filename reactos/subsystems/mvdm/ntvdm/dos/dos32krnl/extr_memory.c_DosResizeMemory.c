
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_6__ {void* LastErrorCode; } ;
struct TYPE_5__ {scalar_t__ OwnerPsp; scalar_t__ Size; char BlockType; } ;
typedef TYPE_1__* PDOS_MCB ;
typedef int BOOLEAN ;


 int DPRINT (char*,scalar_t__,...) ;
 int DPRINT1 (char*) ;
 int DosCombineFreeBlocks (scalar_t__) ;
 int DosMemValidate () ;
 void* ERROR_ARENA_TRASHED ;
 void* ERROR_INVALID_BLOCK ;
 void* ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 TYPE_1__* SEGMENT_TO_MCB (scalar_t__) ;
 TYPE_3__* Sda ;
 int TRUE ;
 int ValidateMcb (TYPE_1__*) ;

BOOLEAN DosResizeMemory(WORD BlockData, WORD NewSize, WORD *MaxAvailable)
{
    BOOLEAN Success = TRUE;
    WORD Segment = BlockData - 1, ReturnSize = 0, NextSegment;
    PDOS_MCB Mcb = SEGMENT_TO_MCB(Segment), NextMcb;

    DPRINT("DosResizeMemory: BlockData 0x%04X, NewSize 0x%04X\n",
           BlockData, NewSize);

    DosMemValidate();


    if (BlockData == 0 || !ValidateMcb(Mcb) || Mcb->OwnerPsp == 0)
    {
        Sda->LastErrorCode = ERROR_INVALID_BLOCK;
        Success = FALSE;
        goto Done;
    }

    ReturnSize = Mcb->Size;


    if (NewSize > Mcb->Size)
    {

        if (Mcb->BlockType == 'Z')
        {
            DPRINT("Cannot expand memory block 0x%04X: this is the last block (size 0x%04X)!\n", Segment, Mcb->Size);
            Sda->LastErrorCode = ERROR_NOT_ENOUGH_MEMORY;
            Success = FALSE;
            goto Done;
        }


        NextSegment = Segment + Mcb->Size + 1;
        NextMcb = SEGMENT_TO_MCB(NextSegment);


        if (!ValidateMcb(NextMcb))
        {
            DPRINT1("The DOS memory arena is corrupted!\n");
            Sda->LastErrorCode = ERROR_ARENA_TRASHED;
            return FALSE;
        }


        if (NextMcb->OwnerPsp != 0)
        {
            DPRINT("Cannot expand memory block 0x%04X: next segment is not free!\n", Segment);
            Sda->LastErrorCode = ERROR_NOT_ENOUGH_MEMORY;
            Success = FALSE;
            goto Done;
        }


        DosCombineFreeBlocks(NextSegment);


        ReturnSize += NextMcb->Size + 1;

        if (ReturnSize < NewSize)
        {
            DPRINT("Cannot expand memory block 0x%04X: insufficient free segments available!\n", Segment);
            Sda->LastErrorCode = ERROR_NOT_ENOUGH_MEMORY;
            Success = FALSE;
            goto Done;
        }


        Mcb->Size = ReturnSize;
        Mcb->BlockType = NextMcb->BlockType;


        NextMcb->BlockType = 'I';


        if (Mcb->Size > NewSize)
        {
            DPRINT("Block too large, reducing size from 0x%04X to 0x%04X\n",
                   Mcb->Size, NewSize);


            NextMcb = SEGMENT_TO_MCB(Segment + NewSize + 1);


            NextMcb->BlockType = Mcb->BlockType;
            NextMcb->Size = Mcb->Size - NewSize - 1;
            NextMcb->OwnerPsp = 0;


            Mcb->BlockType = 'M';
            Mcb->Size = NewSize;
        }
    }
    else if (NewSize < Mcb->Size)
    {
        DPRINT("Shrinking block from 0x%04X to 0x%04X\n",
               Mcb->Size, NewSize);


        NextSegment = Segment + NewSize + 1;
        NextMcb = SEGMENT_TO_MCB(NextSegment);
        NextMcb->BlockType = Mcb->BlockType;
        NextMcb->Size = Mcb->Size - NewSize - 1;
        NextMcb->OwnerPsp = 0;


        Mcb->BlockType = 'M';
        Mcb->Size = NewSize;


        DosCombineFreeBlocks(NextSegment);
    }

Done:

    if (!Success)
    {
        DPRINT("DosResizeMemory FAILED. Maximum available: 0x%04X\n", ReturnSize);


        if (MaxAvailable) *MaxAvailable = ReturnSize;
    }

    DosMemValidate();

    return Success;
}
