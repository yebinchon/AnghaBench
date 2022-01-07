
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int Type; scalar_t__ Length; int Address; } ;
struct TYPE_5__ {int Dr7; } ;
typedef TYPE_1__* PKTRAP_FRAME ;


 int ASSERT (int ) ;
 int DPRINT (char*,...) ;
 int DR7_G0 ;
 int DR7_G1 ;
 int DR7_G2 ;
 int DR7_G3 ;
 int DR7_L0 ;
 int DR7_L1 ;
 int DR7_L2 ;
 int DR7_L3 ;
 int DR7_LEN0_MASK ;
 int DR7_LEN1_MASK ;
 int DR7_LEN2_MASK ;
 int DR7_LEN3_MASK ;
 int DR7_TYPE0_MASK ;
 int DR7_TYPE1_MASK ;
 int DR7_TYPE2_MASK ;
 int DR7_TYPE3_MASK ;
 int FALSE ;



 unsigned int GspHwBreakpointCount ;
 TYPE_4__* GspHwBreakpoints ;
 int GspLoadHwBreakpoint (TYPE_1__*,unsigned int,int ,scalar_t__,int ) ;
 int GspLoadSwBreakpoint (unsigned int) ;
 unsigned int GspSwBreakpointCount ;
 int I386_BP_TYPE_DATA_READWRITE ;
 int I386_BP_TYPE_DATA_WRITE ;
 int I386_BP_TYPE_EXECUTE ;

__attribute__((used)) static void
GspLoadBreakpoints(PKTRAP_FRAME TrapFrame)
{
    unsigned Index;
    ULONG i386Type;

    DPRINT("GspLoadBreakpoints\n");
    DPRINT("DR7 on entry: 0x%08x\n", TrapFrame->Dr7);


    TrapFrame->Dr7 &= ~(DR7_L0 | DR7_L1 | DR7_L2 | DR7_L3 |
                        DR7_G0 | DR7_G1 | DR7_G2 | DR7_G3 |
                        DR7_TYPE0_MASK | DR7_LEN0_MASK |
                        DR7_TYPE1_MASK | DR7_LEN1_MASK |
                        DR7_TYPE2_MASK | DR7_LEN2_MASK |
                        DR7_TYPE3_MASK | DR7_LEN3_MASK);

    for (Index = 0; Index < GspHwBreakpointCount; Index++)
    {
        switch (GspHwBreakpoints[Index].Type)
        {
            case 129:
                i386Type = I386_BP_TYPE_EXECUTE;
                break;
            case 128:
                i386Type = I386_BP_TYPE_DATA_WRITE;
                break;
            case 130:
                i386Type = I386_BP_TYPE_DATA_READWRITE;
                break;
            default:
                ASSERT(FALSE);
                i386Type = I386_BP_TYPE_EXECUTE;
                break;
        }

        GspLoadHwBreakpoint(TrapFrame, Index, GspHwBreakpoints[Index].Address,
                            GspHwBreakpoints[Index].Length - 1, i386Type);
    }

    for (Index = 0; Index < GspSwBreakpointCount; Index++)
    {
        DPRINT("Using real software breakpoint\n");
        GspLoadSwBreakpoint(Index);
    }

    DPRINT("Final DR7 value 0x%08x\n", TrapFrame->Dr7);
}
