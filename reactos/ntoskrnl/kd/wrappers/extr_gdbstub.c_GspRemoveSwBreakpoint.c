
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG_PTR ;
typedef size_t ULONG ;
struct TYPE_4__ {int Active; } ;
typedef int GSPSWBREAKPOINT ;


 int ASSERT (int) ;
 int DPRINT (char*,size_t) ;
 int DPRINT1 (char*) ;
 scalar_t__ GspFindSwBreakpoint (size_t,size_t*) ;
 int GspOutBuffer ;
 size_t GspSwBreakpointCount ;
 TYPE_1__* GspSwBreakpoints ;
 int memmove (TYPE_1__*,TYPE_1__*,size_t) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
GspRemoveSwBreakpoint(ULONG_PTR Address)
{
    ULONG Index;

    DPRINT("GspRemoveSwBreakpoint(0x%p)\n", Address);

    if (GspFindSwBreakpoint(Address, &Index))
    {
        DPRINT("Found match at index %u\n", Index);
        ASSERT(!GspSwBreakpoints[Index].Active);

        if (Index + 1 < GspSwBreakpointCount)
            memmove(GspSwBreakpoints + Index,
                    GspSwBreakpoints + (Index + 1),
                    (GspSwBreakpointCount - Index - 1) * sizeof(GSPSWBREAKPOINT));

        GspSwBreakpointCount--;
        strcpy(GspOutBuffer, "OK");
        return;
    }

    DPRINT1("Not found\n");
    strcpy(GspOutBuffer, "E22");
}
