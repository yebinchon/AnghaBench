
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Address; void* Active; int PrevContent; } ;
typedef int PCHAR ;


 int DPRINT (char*,...) ;
 int DPRINT1 (char*,scalar_t__) ;
 void* FALSE ;
 void* GspMemoryError ;
 unsigned int GspSwBreakpointCount ;
 TYPE_1__* GspSwBreakpoints ;
 int GspWriteMemSafe (int ,int ) ;
 int __writedr (int,int ) ;

__attribute__((used)) static void
GspUnloadBreakpoints(void)
{
    unsigned Index;

    DPRINT("GspUnloadBreakpoints\n");


    __writedr(7, 0);

    for (Index = 0; Index < GspSwBreakpointCount; Index++)
    {
        if (GspSwBreakpoints[Index].Active)
        {
            GspMemoryError = FALSE;
            GspWriteMemSafe((PCHAR)GspSwBreakpoints[Index].Address,
                            GspSwBreakpoints[Index].PrevContent);
            GspSwBreakpoints[Index].Active = FALSE;
            if (GspMemoryError)
            {
                DPRINT1("Failed to remove software breakpoint from 0x%p\n",
                        GspSwBreakpoints[Index].Address);
            }
            else
            {
                DPRINT("Successfully removed software breakpoint from 0x%p\n",
                       GspSwBreakpoints[Index].Address);
            }
        }
    }
}
