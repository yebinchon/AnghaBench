
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_4__ {scalar_t__ Address; int Active; } ;
typedef int GSPSWBREAKPOINT ;


 int ASSERT (int) ;
 int DPRINT (char*,unsigned int) ;
 int DPRINT1 (char*) ;
 int GspOutBuffer ;
 unsigned int GspSwBreakpointCount ;
 TYPE_1__* GspSwBreakpoints ;
 int memmove (TYPE_1__*,TYPE_1__*,unsigned int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
GspRemoveSwBreakpoint(ULONG_PTR Address)
{
  unsigned Index;

  DPRINT("GspRemoveSwBreakpoint(0x%p)\n", Address);
  for (Index = 0; Index < GspSwBreakpointCount; Index++)
    {
      if (GspSwBreakpoints[Index].Address == Address)
        {
          DPRINT("Found match at index %u\n", Index);
          ASSERT(! GspSwBreakpoints[Index].Active);
          if (Index + 1 < GspSwBreakpointCount)
            {
              memmove(GspSwBreakpoints + Index,
                      GspSwBreakpoints + (Index + 1),
                      (GspSwBreakpointCount - Index - 1) *
                      sizeof(GSPSWBREAKPOINT));
            }
          GspSwBreakpointCount--;
          strcpy(GspOutBuffer, "OK");
          return;
        }
    }

  DPRINT1("Not found\n");
  strcpy(GspOutBuffer, "E22");
}
