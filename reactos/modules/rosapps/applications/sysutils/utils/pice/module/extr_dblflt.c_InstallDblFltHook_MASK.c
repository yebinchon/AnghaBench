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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ OldDblFltHandler ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	ULONG LocalDblFltHandler;

	FUNC0();

	FUNC2();
	if(!OldDblFltHandler)
	{
		__asm__("mov $NewDblFltHandler,%0"
			:"=r" (LocalDblFltHandler)
			:
			:"eax");
		OldDblFltHandler=FUNC3(0x08,(ULONG)LocalDblFltHandler);
	}
	FUNC4();

    FUNC1();
}