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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGN_COPY ; 
 int /*<<< orphan*/  SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8()
{
    HRGN hrgn1, hrgn2, hrgn3;

    hrgn1 = FUNC1(0, 0, 0, 0);
    hrgn2 = FUNC1(0, 0, 10, 10);
    hrgn3 = FUNC1(5, 5, 20, 20);

    FUNC5(0xbadbabe);
    FUNC7(FUNC0(NULL, NULL, NULL, RGN_COPY), ERROR);
    FUNC7(FUNC0(NULL, hrgn1, NULL, RGN_COPY), ERROR);
    FUNC7(FUNC0(NULL, NULL, hrgn1, RGN_COPY), ERROR);
    FUNC7(FUNC0(NULL, hrgn1, hrgn2, RGN_COPY), ERROR);
    FUNC6((FUNC3() == 0xbadbabe) || (FUNC3() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC3());

    FUNC7(FUNC0(hrgn1, hrgn2, hrgn3, RGN_COPY), SIMPLEREGION);
    FUNC6(FUNC2(hrgn1, hrgn2), "Region is not correct\n");

    FUNC7(FUNC0(hrgn1, hrgn1, NULL, RGN_COPY), SIMPLEREGION);
    FUNC6(FUNC2(hrgn1, hrgn2), "Region is not correct\n");

    FUNC7(FUNC0(hrgn1, hrgn3, FUNC4(BLACK_PEN), RGN_COPY), SIMPLEREGION);
    FUNC6(FUNC2(hrgn1, hrgn3), "Region is not correct\n");

    FUNC7(FUNC0(hrgn1, FUNC4(BLACK_PEN), hrgn2, RGN_COPY), ERROR);
    FUNC6(FUNC2(hrgn1, hrgn3), "Region is not correct\n");

    FUNC7(FUNC0(hrgn1, NULL, hrgn2, RGN_COPY), ERROR);
    FUNC6(FUNC2(hrgn1, hrgn3), "Region is not correct\n");

    FUNC7(FUNC0(hrgn1, NULL, NULL, RGN_COPY), ERROR);
    FUNC6(FUNC2(hrgn1, hrgn3), "Region is not correct\n");

    FUNC6((FUNC3() == 0xbadbabe) || (FUNC3() == ERROR_INVALID_HANDLE), "wrong error: %ld\n", FUNC3());

}