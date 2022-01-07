
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_4__ {scalar_t__ Type; scalar_t__ Address; scalar_t__ Length; } ;
typedef int GSPHWBREAKPOINT ;


 int DPRINT (char*,unsigned int,...) ;
 int DPRINT1 (char*) ;
 unsigned int GspHwBreakpointCount ;
 TYPE_1__* GspHwBreakpoints ;
 int GspOutBuffer ;
 int memmove (TYPE_1__*,TYPE_1__*,unsigned int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
GspRemoveHwBreakpoint(ULONG Type, ULONG_PTR Address, ULONG Length)
{
    unsigned Index;

    DPRINT("GspRemoveHwBreakpoint(%lu, 0x%p, %lu)\n", Type, Address, Length);
    for (Index = 0; Index < GspHwBreakpointCount; Index++)
    {
        if (GspHwBreakpoints[Index].Type == Type &&
            GspHwBreakpoints[Index].Address == Address &&
            GspHwBreakpoints[Index].Length == Length)
        {
            DPRINT("Found match at index %u\n", Index);
            if (Index + 1 < GspHwBreakpointCount)
                memmove(GspHwBreakpoints + Index,
                        GspHwBreakpoints + (Index + 1),
                        (GspHwBreakpointCount - Index - 1) * sizeof(GSPHWBREAKPOINT));

            GspHwBreakpointCount--;
            strcpy(GspOutBuffer, "OK");
            return;
        }
    }

    DPRINT1("Not found\n");
    strcpy(GspOutBuffer, "E22");
}
