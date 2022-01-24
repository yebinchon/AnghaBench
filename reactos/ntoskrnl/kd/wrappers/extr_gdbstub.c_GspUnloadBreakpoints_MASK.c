#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ Address; void* Active; int /*<<< orphan*/  PrevContent; } ;
typedef  int /*<<< orphan*/  PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 void* FALSE ; 
 void* GspMemoryError ; 
 unsigned int GspSwBreakpointCount ; 
 TYPE_1__* GspSwBreakpoints ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
    unsigned Index;

    FUNC0("GspUnloadBreakpoints\n");

    /* Disable hardware debugging while we are inside the stub */
    FUNC3(7, 0);

    for (Index = 0; Index < GspSwBreakpointCount; Index++)
    {
        if (GspSwBreakpoints[Index].Active)
        {
            GspMemoryError = FALSE;
            FUNC2((PCHAR)GspSwBreakpoints[Index].Address,
                            GspSwBreakpoints[Index].PrevContent);
            GspSwBreakpoints[Index].Active = FALSE;
            if (GspMemoryError)
            {
                FUNC1("Failed to remove software breakpoint from 0x%p\n",
                        GspSwBreakpoints[Index].Address);
            }
            else
            {
                FUNC0("Successfully removed software breakpoint from 0x%p\n",
                       GspSwBreakpoints[Index].Address);
            }
        }
    }
}