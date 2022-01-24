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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ OldIntEHandler ; 
 scalar_t__ FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	ULONG LocalIntEHandler;

	FUNC1();

	FUNC3();
	if(!OldIntEHandler)
	{
		__asm__ __volatile__("mov $NewIntEHandler,%0"
			:"=r" (LocalIntEHandler)
			:
			:"eax");
		OldIntEHandler=FUNC4(0x0E,(ULONG)LocalIntEHandler);
	}
	FUNC5();
	FUNC0((0,"OldIntE @ %x\n", OldIntEHandler));
    FUNC2();
}