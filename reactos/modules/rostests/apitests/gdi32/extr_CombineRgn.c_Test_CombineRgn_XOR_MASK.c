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
typedef  int /*<<< orphan*/ * HRGN ;

/* Variables and functions */
 int /*<<< orphan*/  BLACK_PEN ; 
 int /*<<< orphan*/  COMPLEXREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULLREGION ; 
 int /*<<< orphan*/  RGN_OR ; 
 int /*<<< orphan*/  RGN_XOR ; 
 int /*<<< orphan*/  SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8()
{
    HRGN hrgn1, hrgn2, hrgn3, hrgn4;

    hrgn1 = FUNC1(0, 0, 0, 0);
    hrgn2 = FUNC1(0, 0, 5, 5);
    hrgn3 = FUNC1(5, 5, 10, 10);
    hrgn4 = FUNC1(0, 0, 0, 0);

    FUNC5(0xbadbabe);
    FUNC7(FUNC0(NULL, NULL, NULL, RGN_XOR), ERROR);
    FUNC7(FUNC0(hrgn1, NULL, NULL, RGN_XOR), ERROR);
    FUNC7(FUNC0(hrgn1, hrgn2, NULL, RGN_XOR), ERROR);
    FUNC7(FUNC0(hrgn1, NULL, hrgn2, RGN_XOR), ERROR);
    FUNC7(FUNC0(hrgn1, FUNC4(BLACK_PEN), hrgn2, RGN_XOR), ERROR);
    FUNC7(FUNC0(hrgn1, hrgn2, FUNC4(BLACK_PEN), RGN_XOR), ERROR);
    FUNC6((FUNC3() == 0xbadbabe) || (FUNC3() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC3());

    FUNC7(FUNC0(hrgn1, hrgn2, hrgn3, RGN_XOR), COMPLEXREGION);
    FUNC7(FUNC0(hrgn4, hrgn2, hrgn3, RGN_OR), COMPLEXREGION);
    FUNC6(FUNC2(hrgn1, hrgn4), "Region is not correct\n");

    FUNC7(FUNC0(hrgn1, hrgn1, hrgn2, RGN_XOR), SIMPLEREGION);
    FUNC6(FUNC2(hrgn1, hrgn3), "Region is not correct\n");
    FUNC7(FUNC0(hrgn1, hrgn1, hrgn3, RGN_XOR), NULLREGION);


}