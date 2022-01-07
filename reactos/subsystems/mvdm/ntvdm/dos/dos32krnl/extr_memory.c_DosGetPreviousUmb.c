
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_8__ {int LastErrorCode; } ;
struct TYPE_7__ {int UmbChainStart; } ;
struct TYPE_6__ {char BlockType; scalar_t__ Size; } ;
typedef TYPE_1__* PDOS_MCB ;


 int DPRINT1 (char*) ;
 int ERROR_ARENA_TRASHED ;
 TYPE_1__* SEGMENT_TO_MCB (int) ;
 TYPE_4__* Sda ;
 TYPE_3__* SysVars ;
 scalar_t__ TRUE ;
 int ValidateMcb (TYPE_1__*) ;

WORD DosGetPreviousUmb(WORD UmbSegment)
{
    PDOS_MCB CurrentMcb;
    WORD Segment, PrevSegment = 0;

    if (SysVars->UmbChainStart == 0xFFFF)
        return 0;


    Segment = SysVars->UmbChainStart;
    while (TRUE)
    {

        CurrentMcb = SEGMENT_TO_MCB(Segment);


        if (!ValidateMcb(CurrentMcb))
        {
            DPRINT1("The UMB DOS memory arena is corrupted!\n");
            Sda->LastErrorCode = ERROR_ARENA_TRASHED;
            return 0;
        }


        if (Segment >= UmbSegment) break;

        PrevSegment = Segment;


        if (CurrentMcb->BlockType == 'Z') break;


        Segment += CurrentMcb->Size + 1;
    }

    return PrevSegment;
}
