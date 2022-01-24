#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ pModJustFreed ; 

void FUNC3(void)
{
    FUNC0((0,"other_module_cleanup_module()\n"));

    if(&old_cleanup_module)
    {
        FUNC0((0,"other_module_cleanup_module(): calling %x\n",(ULONG)old_cleanup_module));
        FUNC2();
    }

    if(pModJustFreed)
    {
        FUNC0((0,"other_module_cleanup_module(): calling RevirtualizeBreakpointsForModule(%x)\n",(ULONG)pModJustFreed));
        FUNC1(pModJustFreed);
    }
}