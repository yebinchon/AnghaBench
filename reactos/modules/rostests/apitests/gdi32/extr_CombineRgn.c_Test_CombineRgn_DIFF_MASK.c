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
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int ERROR_INVALID_HANDLE ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULLREGION ; 
 int /*<<< orphan*/  RGN_DIFF ; 
 int /*<<< orphan*/  SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7()
{
    HRGN hrgn1, hrgn2, hrgn3;

    hrgn1 = FUNC1(0, 0, 0, 0);
    hrgn2 = FUNC1(0, 0, 10, 10);
    hrgn3 = FUNC1(5, 0, 10, 5);

    FUNC4(0xbadbabe);
    FUNC6(FUNC0(NULL, NULL, NULL, RGN_DIFF), ERROR);
    FUNC6(FUNC0(hrgn1, NULL, NULL, RGN_DIFF), ERROR);
    FUNC6(FUNC0(hrgn1, hrgn2, NULL, RGN_DIFF), ERROR);
    FUNC6(FUNC0(hrgn1, NULL, hrgn2, RGN_DIFF), ERROR);
    FUNC6(FUNC0(hrgn1, FUNC3(BLACK_PEN), hrgn2, RGN_DIFF), ERROR);
    FUNC6(FUNC0(hrgn1, hrgn2, FUNC3(BLACK_PEN), RGN_DIFF), ERROR);
    FUNC5((FUNC2() == 0xbadbabe) || (FUNC2() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC2());

    FUNC6(FUNC0(hrgn1, hrgn1, hrgn1, RGN_DIFF), NULLREGION);
    FUNC6(FUNC0(hrgn1, hrgn2, hrgn2, RGN_DIFF), NULLREGION);
    FUNC6(FUNC0(hrgn1, hrgn1, hrgn2, RGN_DIFF), NULLREGION);

    FUNC6(FUNC0(hrgn1, hrgn2, hrgn1, RGN_DIFF), SIMPLEREGION);
    FUNC6(FUNC0(hrgn1, hrgn2, hrgn3, RGN_DIFF), COMPLEXREGION);
    FUNC6(FUNC0(hrgn1, hrgn1, hrgn3, RGN_DIFF), COMPLEXREGION);
    FUNC6(FUNC0(hrgn1, hrgn1, hrgn2, RGN_DIFF), NULLREGION);


}