#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_4__ {scalar_t__ Address; int /*<<< orphan*/  Active; } ;
typedef  int /*<<< orphan*/  GSPSWBREAKPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  GspOutBuffer ; 
 unsigned int GspSwBreakpointCount ; 
 TYPE_1__* GspSwBreakpoints ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(ULONG_PTR Address)
{
  unsigned Index;

  FUNC1("GspRemoveSwBreakpoint(0x%p)\n", Address);
  for (Index = 0; Index < GspSwBreakpointCount; Index++)
    {
      if (GspSwBreakpoints[Index].Address == Address)
        {
          FUNC1("Found match at index %u\n", Index);
          FUNC0(! GspSwBreakpoints[Index].Active);
          if (Index + 1 < GspSwBreakpointCount)
            {
              FUNC3(GspSwBreakpoints + Index,
                      GspSwBreakpoints + (Index + 1),
                      (GspSwBreakpointCount - Index - 1) *
                      sizeof(GSPSWBREAKPOINT));
            }
          GspSwBreakpointCount--;
          FUNC4(GspOutBuffer, "OK");
          return;
        }
    }

  FUNC2("Not found\n");
  FUNC4(GspOutBuffer, "E22");
}