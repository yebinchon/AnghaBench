#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WORD ;
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {unsigned long FramePtr; int Scope; int IsUwop; unsigned char Code; unsigned char Location; unsigned char Reg; int Offset; unsigned long Reg2; int TryLevel; unsigned long FramePtrDiff; TYPE_1__* SehBlock; int /*<<< orphan*/  cScopes; } ;
struct TYPE_5__ {unsigned char BeginTry; unsigned char EndTry; unsigned char Target; unsigned char End; unsigned long Handler; } ;
typedef  TYPE_2__* PDW2CFSTATE ;
typedef  unsigned char DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,unsigned char,unsigned char,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
#define  DW_CFA_GNU_args_size 145 
 unsigned char DW_CFA_advance_loc ; 
#define  DW_CFA_advance_loc1 144 
#define  DW_CFA_advance_loc2 143 
#define  DW_CFA_advance_loc4 142 
#define  DW_CFA_def_cfa 141 
#define  DW_CFA_def_cfa_offset 140 
#define  DW_CFA_def_cfa_register 139 
#define  DW_CFA_def_cfa_sf 138 
#define  DW_CFA_nop 137 
 unsigned char DW_CFA_offset ; 
#define  DW_CFA_offset_extended 136 
#define  DW_CFA_offset_extended_sf 135 
#define  DW_CFA_register 134 
#define  DW_CFA_remember_state 133 
 unsigned char DW_CFA_restore ; 
#define  DW_CFA_restore_extended 132 
#define  DW_CFA_restore_state 131 
#define  DW_CFA_same_value 130 
#define  DW_CFA_set_loc 129 
#define  DW_CFA_undefined 128 
 unsigned long FUNC1 (unsigned long*,char*) ; 
 scalar_t__ FUNC2 (unsigned long*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned char,char*) ; 
 scalar_t__ g_ehframep ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 TYPE_3__* regs ; 
 int /*<<< orphan*/  stderr ; 

unsigned long
FUNC6(PDW2CFSTATE State, char *pc)
{
    unsigned char Code;
    unsigned long Length;
    unsigned long PrevFramePtr = State->FramePtr;

    State->Scope = 0;
    State->IsUwop = 0;
    State->Code = Code = *pc;
    Length = 1;
    if ((Code & 0xc0) == DW_CFA_advance_loc)
    {
        State->Code = DW_CFA_advance_loc;
        State->Location += Code & 0x3f;
    }
    else if ((Code & 0xc0) == DW_CFA_offset)
    {
        State->Code = DW_CFA_offset;
        State->Reg = Code & 0x3f;
        Length += FUNC2((unsigned long*)&State->Offset, pc + 1);
        State->Offset *= 8; // fixme data alignment
        State->IsUwop = 1;
    }
    else if ((Code & 0xc0) == DW_CFA_restore)
    {
        State->Code = DW_CFA_restore;
        State->Reg = Code & 0x3f;
    }
    else switch (Code)
    {
        case DW_CFA_nop:
            break;
        case DW_CFA_set_loc:
            Length = 9; // address
            State->Location = *(DWORD*)(pc + 1);
            break;
        case DW_CFA_advance_loc1:
            Length = 2;
            State->Location += pc[1];
            break;
        case DW_CFA_advance_loc2:
            Length = 3;
//            printf("Found a DW_CFA_advance_loc2 : 0x%lx ->", *(WORD*)(pc + 1));
            State->Location += *(WORD*)(pc + 1);
//            printf(" 0x%lx\n", State->Location);
            break;
        case DW_CFA_advance_loc4:
            Length = 5;
//            printf("Found a DW_CFA_advance_loc4 : 0x%lx ->", *(DWORD*)(pc + 1));
            State->Location += *(DWORD*)(pc + 1);
//            printf(" 0x%lx\n", State->Location);
            break;
        case DW_CFA_offset_extended:
            Length += FUNC2(&State->Reg, pc + Length);
            Length += FUNC2((unsigned long*)&State->Offset, pc + Length);
            State->IsUwop = 1;
            break;
        case DW_CFA_offset_extended_sf:
            Length += FUNC2(&State->Reg, pc + Length);
            Length += FUNC1(&State->Offset, pc + Length);
            State->IsUwop = 1;
            break;
        case DW_CFA_restore_extended:
            Length += FUNC2(&State->Reg, pc + Length);
            break;
        case DW_CFA_undefined:
            Length += FUNC2(&State->Reg, pc + Length);
            break;
        case DW_CFA_same_value:
            Length += FUNC2(&State->Reg, pc + Length);
            break;
        case DW_CFA_register:
            Length += FUNC2(&State->Reg, pc + Length);
            Length += FUNC2(&State->Reg2, pc + Length);
            break;
        case DW_CFA_remember_state:
            break;
        case DW_CFA_restore_state:
            break;
        case DW_CFA_def_cfa:
            Length += FUNC2(&State->Reg, pc + Length);
            Length += FUNC2((unsigned long*)&State->FramePtr, pc + Length);
            State->IsUwop = 1;
            break;
        case DW_CFA_def_cfa_register:
            Length += FUNC2(&State->Reg, pc + Length);
            break;
        case DW_CFA_def_cfa_offset:
            Length += FUNC2((unsigned long*)&State->FramePtr, pc + Length);
            State->IsUwop = 1;
            break;
        case DW_CFA_def_cfa_sf:
            Length += FUNC2(&State->Reg, pc + Length);
            Length += FUNC1(&State->FramePtr, pc + Length);
            State->FramePtr *= 8; // data alignment
            State->IsUwop = 1;
            break;
        case DW_CFA_GNU_args_size:
        {
            unsigned long argsize;
            FUNC5("Warning, DW_CFA_GNU_args_size is unimplemented\n");
            Length += FUNC2(&argsize, pc + Length);
            break;
        }
        /* PSEH */
        case 0x21:
        {
            unsigned long SehType;

//            printf("found 0x21 at %lx\n", State->Location);
            Length += FUNC2(&SehType, pc + Length);
            switch (SehType)
            {
                case 1: /* Begin Try */
                    State->TryLevel++;
                    if (State->TryLevel >= 20)
                    {
                        FUNC5("WTF? Trylevel of 20 exceeded...\n");
                        FUNC3(1);
                    }
                    State->SehBlock[State->TryLevel-1].BeginTry = State->Location;
//                    printf("Found begintry at 0x%lx\n", State->Location);
                    State->Scope = 1;
                    break;

                case 2: /* End Try */
                    State->SehBlock[State->TryLevel-1].EndTry = State->Location;
                    State->Scope = 2;
                    break;

                case 3: /* Jump target */
                    State->SehBlock[State->TryLevel-1].Target = State->Location;
                    State->Scope = 3;
                    break;

                case 4: /* SEH End */
                    if (State->TryLevel == 20)
                    {
                        FUNC5("Ooops, end of SEH with trylevel at 0!\n");
                        FUNC3(1);
                    }
                    State->SehBlock[State->TryLevel-1].End = State->Location;
                    State->TryLevel--;
                    State->cScopes++;
                    State->Scope = 0;
                    break;

                case 5: /* Constant filter */
                {
                    unsigned long value;
                    Length += FUNC2(&value, pc + Length);
                    State->SehBlock[State->TryLevel-1].Handler = value;
//                     printf("Found a constant filter at 0x%lx\n", State->Location);
                    break;
                }

               /* These work differently. We are in a new function.
                 * We have to parse a lea opcode to find the adress of
                 * the jump target. This is the reference to find the 
                 * appropriate C_SCOPE_TABLE. */
                case 6: /* Filter func */
//                    printf("Found a filter func at 0x%lx\n", State->Location);
                    break;

                case 7: /* Finally func */
                {
//                     printf("Found a finally func at 0x%lx\n", State->Location);
                    break;
                }

                default:
                    FUNC5("Found unknow PSEH code 0x%lx\n", SehType);
                    FUNC3(1);
            }
            break;
        }
        default:
            FUNC4(stderr, "unknown instruction 0x%hhx at 0x%p\n", Code, pc);
            FUNC3(1);
    }
    
    State->FramePtrDiff = State->FramePtr - PrevFramePtr;
    FUNC0("@%p: code=%x, Loc=%lx, offset=%lx, reg=0x%lx:%s\n", 
        (void*)((ULONG)pc - g_ehframep), Code, State->Location, State->Offset, State->Reg, regs[State->Reg].name);
    return Length;
}