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
typedef  size_t ULONG_PTR ;
typedef  size_t ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  Active; } ;
typedef  int /*<<< orphan*/  GSPSWBREAKPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (size_t,size_t*) ; 
 int /*<<< orphan*/  GspOutBuffer ; 
 size_t GspSwBreakpointCount ; 
 TYPE_1__* GspSwBreakpoints ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(ULONG_PTR Address)
{
    ULONG Index;

    FUNC1("GspRemoveSwBreakpoint(0x%p)\n", Address);

    if (FUNC3(Address, &Index))
    {
        FUNC1("Found match at index %u\n", Index);
        FUNC0(!GspSwBreakpoints[Index].Active);

        if (Index + 1 < GspSwBreakpointCount)
            FUNC4(GspSwBreakpoints + Index,
                    GspSwBreakpoints + (Index + 1),
                    (GspSwBreakpointCount - Index - 1) * sizeof(GSPSWBREAKPOINT));

        GspSwBreakpointCount--;
        FUNC5(GspOutBuffer, "OK");
        return;
    }

    FUNC2("Not found\n");
    FUNC5(GspOutBuffer, "E22");
}