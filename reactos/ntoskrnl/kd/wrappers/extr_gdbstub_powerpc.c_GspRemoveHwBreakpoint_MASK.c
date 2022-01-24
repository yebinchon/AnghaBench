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
typedef  scalar_t__ ULONG ;
struct TYPE_4__ {scalar_t__ Type; scalar_t__ Address; scalar_t__ Length; } ;
typedef  int /*<<< orphan*/  GSPHWBREAKPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int GspHwBreakpointCount ; 
 TYPE_1__* GspHwBreakpoints ; 
 int /*<<< orphan*/  GspOutBuffer ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(ULONG Type, ULONG_PTR Address, ULONG Length)
{
  unsigned Index;

  FUNC0("GspRemoveHwBreakpoint(%lu, 0x%p, %lu)\n", Type, Address, Length);
  for (Index = 0; Index < GspHwBreakpointCount; Index++)
    {
      if (GspHwBreakpoints[Index].Type == Type &&
          GspHwBreakpoints[Index].Address == Address &&
          GspHwBreakpoints[Index].Length == Length)
        {
          FUNC0("Found match at index %u\n", Index);
          if (Index + 1 < GspHwBreakpointCount)
            {
              FUNC2(GspHwBreakpoints + Index,
                      GspHwBreakpoints + (Index + 1),
                      (GspHwBreakpointCount - Index - 1) *
                      sizeof(GSPHWBREAKPOINT));
            }
          GspHwBreakpointCount--;
          FUNC3(GspOutBuffer, "OK");
          return;
        }
    }

  FUNC1("Not found\n");
  FUNC3(GspOutBuffer, "E22");
}