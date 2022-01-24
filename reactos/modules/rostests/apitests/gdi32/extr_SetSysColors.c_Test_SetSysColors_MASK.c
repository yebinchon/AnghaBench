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
typedef  int INT ;
typedef  scalar_t__ COLORREF ;

/* Variables and functions */
 scalar_t__ ERROR_NOACCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int NUM_SYSCOLORS ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int*,scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

void FUNC6()
{
	INT i;
	INT nElements[NUM_SYSCOLORS+1];
	COLORREF crOldColors[NUM_SYSCOLORS];
	COLORREF crColors[NUM_SYSCOLORS+1];

	/* First save the Old colors */
	for (i = 0; i < NUM_SYSCOLORS; i++)
	{
		nElements[i] = i;
		crOldColors[i] = FUNC1(i);
	}

	for (i = 0; i < NUM_SYSCOLORS+1; i++)
		crColors[i] = FUNC2(i, 255-i, i*3);
	nElements[NUM_SYSCOLORS] = nElements[0];

	FUNC3(0xdeadbeef);
	FUNC5(FUNC4(-1, nElements, crColors) == FALSE, "Expected FALSE, got TRUE\n");
	FUNC5(FUNC0() == ERROR_NOACCESS, "Expected ERROR_NOACCESS, got %ld\n", FUNC0());
	FUNC5(FUNC4(0, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
	FUNC5(FUNC4(0, NULL, crColors) == TRUE, "Expected TRUE, got FALSE\n");
	FUNC5(FUNC4(0, nElements, NULL) == TRUE, "Expected TRUE, got FALSE\n");
	FUNC5(FUNC4(1, NULL, crColors) == FALSE, "Expected FALSE, got TRUE\n");
	FUNC5(FUNC0() == ERROR_NOACCESS, "Expected ERROR_NOACCESS, got %ld\n", FUNC0());
	FUNC5(FUNC4(1, nElements, NULL) == FALSE, "Expected FALSE, got TRUE\n");
	FUNC5(FUNC0() == ERROR_NOACCESS, "Expected ERROR_NOACCESS, got %ld\n", FUNC0());
	FUNC5(FUNC4(1, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
	FUNC5(FUNC4(NUM_SYSCOLORS, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
	for (i = 0; i < NUM_SYSCOLORS; i++)
		FUNC5(FUNC1(nElements[i]) == crColors[i], "Expected %06lx, got %06lx\n", crColors[i], FUNC1(nElements[i]));

	/* try more than NUM_SYSCOLORS */
	FUNC5(FUNC4(NUM_SYSCOLORS+1, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");
	nElements[NUM_SYSCOLORS] = 10000;
	FUNC5(FUNC4(NUM_SYSCOLORS+1, nElements, crColors) == TRUE, "Expected TRUE, got FALSE\n");

	/* restore old SysColors */
	FUNC4(NUM_SYSCOLORS, nElements, crOldColors);
}