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
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ OldInt1Handler ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	FUNC0((0,"DeInstallTraceHook(OldInt1Handler=%0.8x)...\n",OldInt1Handler));

	FUNC1();
	if(OldInt1Handler)
	{
		FUNC2(0x01,(ULONG)OldInt1Handler);
        OldInt1Handler = 0;
	}
	FUNC3();
}