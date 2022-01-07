
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WORD ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {unsigned long FramePtr; int Scope; int IsUwop; unsigned char Code; unsigned char Location; unsigned char Reg; int Offset; unsigned long Reg2; int TryLevel; unsigned long FramePtrDiff; TYPE_1__* SehBlock; int cScopes; } ;
struct TYPE_5__ {unsigned char BeginTry; unsigned char EndTry; unsigned char Target; unsigned char End; unsigned long Handler; } ;
typedef TYPE_2__* PDW2CFSTATE ;
typedef unsigned char DWORD ;


 int DPRINT (char*,void*,unsigned char,unsigned char,unsigned long,unsigned long,int ) ;

 unsigned char DW_CFA_advance_loc ;
 unsigned char DW_CFA_offset ;




 unsigned char DW_CFA_restore ;





 unsigned long DwDecodeSleb128 (unsigned long*,char*) ;
 scalar_t__ DwDecodeUleb128 (unsigned long*,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,unsigned char,char*) ;
 scalar_t__ g_ehframep ;
 int printf (char*,...) ;
 TYPE_3__* regs ;
 int stderr ;

unsigned long
DwExecIntruction(PDW2CFSTATE State, char *pc)
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
        Length += DwDecodeUleb128((unsigned long*)&State->Offset, pc + 1);
        State->Offset *= 8;
        State->IsUwop = 1;
    }
    else if ((Code & 0xc0) == DW_CFA_restore)
    {
        State->Code = DW_CFA_restore;
        State->Reg = Code & 0x3f;
    }
    else switch (Code)
    {
        case 137:
            break;
        case 129:
            Length = 9;
            State->Location = *(DWORD*)(pc + 1);
            break;
        case 144:
            Length = 2;
            State->Location += pc[1];
            break;
        case 143:
            Length = 3;

            State->Location += *(WORD*)(pc + 1);

            break;
        case 142:
            Length = 5;

            State->Location += *(DWORD*)(pc + 1);

            break;
        case 136:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            Length += DwDecodeUleb128((unsigned long*)&State->Offset, pc + Length);
            State->IsUwop = 1;
            break;
        case 135:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            Length += DwDecodeSleb128(&State->Offset, pc + Length);
            State->IsUwop = 1;
            break;
        case 132:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            break;
        case 128:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            break;
        case 130:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            break;
        case 134:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            Length += DwDecodeUleb128(&State->Reg2, pc + Length);
            break;
        case 133:
            break;
        case 131:
            break;
        case 141:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            Length += DwDecodeUleb128((unsigned long*)&State->FramePtr, pc + Length);
            State->IsUwop = 1;
            break;
        case 139:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            break;
        case 140:
            Length += DwDecodeUleb128((unsigned long*)&State->FramePtr, pc + Length);
            State->IsUwop = 1;
            break;
        case 138:
            Length += DwDecodeUleb128(&State->Reg, pc + Length);
            Length += DwDecodeSleb128(&State->FramePtr, pc + Length);
            State->FramePtr *= 8;
            State->IsUwop = 1;
            break;
        case 145:
        {
            unsigned long argsize;
            printf("Warning, DW_CFA_GNU_args_size is unimplemented\n");
            Length += DwDecodeUleb128(&argsize, pc + Length);
            break;
        }

        case 0x21:
        {
            unsigned long SehType;


            Length += DwDecodeUleb128(&SehType, pc + Length);
            switch (SehType)
            {
                case 1:
                    State->TryLevel++;
                    if (State->TryLevel >= 20)
                    {
                        printf("WTF? Trylevel of 20 exceeded...\n");
                        exit(1);
                    }
                    State->SehBlock[State->TryLevel-1].BeginTry = State->Location;

                    State->Scope = 1;
                    break;

                case 2:
                    State->SehBlock[State->TryLevel-1].EndTry = State->Location;
                    State->Scope = 2;
                    break;

                case 3:
                    State->SehBlock[State->TryLevel-1].Target = State->Location;
                    State->Scope = 3;
                    break;

                case 4:
                    if (State->TryLevel == 20)
                    {
                        printf("Ooops, end of SEH with trylevel at 0!\n");
                        exit(1);
                    }
                    State->SehBlock[State->TryLevel-1].End = State->Location;
                    State->TryLevel--;
                    State->cScopes++;
                    State->Scope = 0;
                    break;

                case 5:
                {
                    unsigned long value;
                    Length += DwDecodeUleb128(&value, pc + Length);
                    State->SehBlock[State->TryLevel-1].Handler = value;

                    break;
                }





                case 6:

                    break;

                case 7:
                {

                    break;
                }

                default:
                    printf("Found unknow PSEH code 0x%lx\n", SehType);
                    exit(1);
            }
            break;
        }
        default:
            fprintf(stderr, "unknown instruction 0x%x at 0x%p\n", Code, pc);
            exit(1);
    }

    State->FramePtrDiff = State->FramePtr - PrevFramePtr;
    DPRINT("@%p: code=%x, Loc=%lx, offset=%lx, reg=0x%lx:%s\n",
        (void*)((ULONG)pc - g_ehframep), Code, State->Location, State->Offset, State->Reg, regs[State->Reg].name);
    return Length;
}
