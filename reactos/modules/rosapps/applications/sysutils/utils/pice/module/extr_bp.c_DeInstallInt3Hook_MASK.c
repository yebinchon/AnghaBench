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
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ OldInt3Handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	FUNC1();
	FUNC0((0,"enter DeInstallInt3Hook()...\n"));

	FUNC3();
	if(OldInt3Handler)
	{
        FUNC4(TRUE);
		FUNC5(0x03,(ULONG)OldInt3Handler);
        OldInt3Handler=0;
	}
	FUNC6();

	FUNC0((0,"leave DeInstallInt3Hook()...\n"));
    FUNC2();
}