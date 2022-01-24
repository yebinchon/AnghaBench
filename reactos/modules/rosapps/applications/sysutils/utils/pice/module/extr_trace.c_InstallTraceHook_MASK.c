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
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ OldInt1Handler ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 

BOOLEAN FUNC4(void)
{
	ULONG LocalInt1Handler;

    FUNC0((0,"InstallTraceHook(OldInt1Handler=%0.8x)...\n",OldInt1Handler));

	FUNC1();
	if(!OldInt1Handler)
	{
		__asm__("mov $NewInt1Handler,%0"
			:"=r" (LocalInt1Handler)
			:
			:"eax");
		OldInt1Handler=FUNC2(0x01,(ULONG)LocalInt1Handler);
	}
	FUNC3();
	return TRUE;
}