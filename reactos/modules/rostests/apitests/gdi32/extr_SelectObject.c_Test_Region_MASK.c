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
typedef  scalar_t__ UINT_PTR ;
typedef  scalar_t__ HRGN ;

/* Variables and functions */
 scalar_t__ COMPLEXREGION ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ NULLREGION ; 
 int /*<<< orphan*/  RGN_OR ; 
 scalar_t__ SIMPLEREGION ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdc1 ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7()
{
    HRGN hrgn, hrgnOld;

	/* Test REGION */
	FUNC4(ERROR_SUCCESS);
	hrgn = FUNC1(0,0,0,0);
	hrgnOld = FUNC3(hdc1, hrgn);
	FUNC5((UINT_PTR)hrgnOld == NULLREGION, "\n");
	FUNC2(hrgn);

	hrgn = FUNC1(0,0,10,10);
	FUNC5((UINT_PTR)FUNC3(hdc1, hrgn) == SIMPLEREGION, "\n");
	hrgnOld = FUNC1(5,5,20,20);
	FUNC5(FUNC0(hrgn, hrgn, hrgnOld, RGN_OR) == COMPLEXREGION, "\n");
	FUNC2(hrgnOld);
	FUNC5((UINT_PTR)FUNC3(hdc1, hrgn) == SIMPLEREGION, "\n"); // ??? Why this?
	FUNC2(hrgn);
//	ok(IsHandleValid(hrgn) == TRUE, "\n");
	FUNC6(ERROR_SUCCESS);
}