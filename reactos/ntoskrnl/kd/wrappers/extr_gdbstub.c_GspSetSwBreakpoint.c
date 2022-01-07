
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ULONG_PTR ;
struct TYPE_2__ {size_t Address; int Active; } ;


 int DPRINT (char*,size_t) ;
 int DPRINT1 (char*) ;
 int FALSE ;
 scalar_t__ GspFindSwBreakpoint (size_t,int *) ;
 int GspOutBuffer ;
 size_t GspSwBreakpointCount ;
 TYPE_1__* GspSwBreakpoints ;
 size_t MAX_SW_BREAKPOINTS ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
GspSetSwBreakpoint(ULONG_PTR Address)
{
    DPRINT("GspSetSwBreakpoint(0x%p)\n", Address);

    if (MAX_SW_BREAKPOINTS == GspSwBreakpointCount)
    {
        DPRINT1("Trying to set too many software breakpoints\n");
        strcpy(GspOutBuffer, "E22");
        return;
    }

    if (GspFindSwBreakpoint(Address, ((void*)0)))
    {
        strcpy(GspOutBuffer, "E22");
        return;
    }

    DPRINT("Stored at index %u\n", GspSwBreakpointCount);
    GspSwBreakpoints[GspSwBreakpointCount].Address = Address;
    GspSwBreakpoints[GspSwBreakpointCount].Active = FALSE;
    GspSwBreakpointCount++;
    strcpy(GspOutBuffer, "OK");
}
