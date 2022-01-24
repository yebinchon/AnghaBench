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
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  KeyboardIRQL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ OldGlobalInt31Handler ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	ULONG LocalNewGlobalInt31Handler;

	FUNC0();

	FUNC2();
	if(!OldGlobalInt31Handler)
	{
		__asm__("mov $NewGlobalInt31Handler,%0"
			:"=r" (LocalNewGlobalInt31Handler)
			:
			:"eax");
		OldGlobalInt31Handler=FUNC3(KeyboardIRQL,(ULONG)LocalNewGlobalInt31Handler);
	}
	FUNC4();

    FUNC1();
}