
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* USHORT ;
struct TYPE_7__ {int CodeOffset; int OpInfo; int FrameOffset; void* UnwindOp; } ;
typedef TYPE_1__ UNWIND_CODE ;
typedef int ULONG ;
struct TYPE_10__ {int regnt; } ;
struct TYPE_9__ {int Location; int Code; size_t Reg; int Offset; int FramePtrDiff; } ;
struct TYPE_8__ {int CountOfCodes; TYPE_1__* UnwindCode; } ;
typedef TYPE_2__* PUNWIND_INFO ;
typedef TYPE_3__* PDW2CFSTATE ;







 void* UWOP_ALLOC_LARGE ;
 void* UWOP_ALLOC_SMALL ;
 void* UWOP_SAVE_NONVOL ;
 void* UWOP_SAVE_NONVOL_FAR ;
 TYPE_4__* regs ;

ULONG
StoreUnwindCodes(PUNWIND_INFO Info, PDW2CFSTATE State, ULONG FunctionStart)
{
    ULONG cCodes = 0;
    ULONG AllocSize;
    UNWIND_CODE Code[3];
    int i;

    Code[0].CodeOffset = State->Location - FunctionStart;

    switch (State->Code)
    {
        case 129:
        case 128:

            Code[0].OpInfo = regs[State->Reg].regnt;
            if (State->Offset <= 0x7FFF8)
            {
                Code[0].UnwindOp = UWOP_SAVE_NONVOL;
                Code[1].FrameOffset = State->Offset / 8;
                cCodes = 2;
            }
            else
            {
                Code[0].UnwindOp = UWOP_SAVE_NONVOL_FAR;
                Code[1].FrameOffset = (State->Offset / 8);
                Code[2].FrameOffset = (State->Offset / 8) >> 16;
                cCodes = 3;
            }
            break;

        case 132:

        case 131:
        case 130:
            AllocSize = State->FramePtrDiff;
            if (AllocSize <= 128)
            {
                Code[0].UnwindOp = UWOP_ALLOC_SMALL;
                Code[0].OpInfo = (AllocSize / 8) - 1;
                cCodes = 1;
            }
            else if (AllocSize <= 0x7FFF8)
            {
                Code[0].UnwindOp = UWOP_ALLOC_LARGE;
                Code[0].OpInfo = 0;
                Code[1].FrameOffset = AllocSize / 8;
                cCodes = 2;
            }
            else
            {
                Code[0].UnwindOp = UWOP_ALLOC_LARGE;
                Code[0].OpInfo = 1;
                Code[1].FrameOffset = (USHORT)AllocSize;
                Code[2].FrameOffset = (USHORT)(AllocSize >> 16);
                cCodes = 3;
            }
            break;
    }

    if (Info)
    {

        for (i = Info->CountOfCodes - 1; i >= 0; i--)
        {
            Info->UnwindCode[i + cCodes] = Info->UnwindCode[i];
        }


        for (i = 0; i < cCodes; i++)
        {
            Info->UnwindCode[i] = Code[i];
        }

        Info->CountOfCodes += cCodes;
    }

    return cCodes;
}
