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
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLEXREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int INT_MIN ; 
 int /*<<< orphan*/  NULLREGION ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  RGN_OR ; 
 int /*<<< orphan*/  RGN_XOR ; 
 int /*<<< orphan*/  SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8()
{
    HRGN hrgn1, hrgn2;
    HDC hdc;

    hrgn1 = FUNC2(0, 0, 0, 0);
    FUNC6(hrgn1 != NULL, "CreateRectRgn failed\n");
    FUNC7(FUNC5(hrgn1, INT_MIN + 10, 10), NULLREGION);
    FUNC7(FUNC5(hrgn1, 0xF000000, 0xF000000), NULLREGION);
    FUNC3(hrgn1);

    hrgn1 = FUNC2(0, 0, 100, 100);
    FUNC6(hrgn1 != NULL, "CreateRectRgn failed\n");
    FUNC7(FUNC5(hrgn1, 10, 10), SIMPLEREGION);
    FUNC7(FUNC5(hrgn1, 0x8000000 - 110, 10), ERROR);
    FUNC7(FUNC5(hrgn1, 0x8000000 - 111, 10), SIMPLEREGION);
    FUNC3(hrgn1);

    hrgn1 = FUNC2(0, 0, 100, 100);
    FUNC6(hrgn1 != NULL, "CreateRectRgn failed\n");
    FUNC7(FUNC5(hrgn1, -10, 10), SIMPLEREGION);
    FUNC7(FUNC5(hrgn1, -(0x8000000 - 9), 10), ERROR);
    FUNC7(FUNC5(hrgn1, -(0x8000000 - 10), 10), SIMPLEREGION);
    FUNC3(hrgn1);

    hrgn1 = FUNC2(0, 0, 10, 10);
    hrgn2 = FUNC2(1000, 20, 1010, 30);
    FUNC7(FUNC0(hrgn1, hrgn1, hrgn2, RGN_OR), COMPLEXREGION);
    FUNC7(FUNC5(hrgn1, 0x8000000 - 100, 10), ERROR);
    FUNC7(FUNC0(hrgn1, hrgn1, hrgn2, RGN_XOR), SIMPLEREGION);
    FUNC3(hrgn2);
    hrgn2 = FUNC2(0, 0, 10, 10);
    FUNC7(FUNC0(hrgn1, hrgn1, hrgn2, RGN_XOR), NULLREGION);

    hrgn1 = FUNC2(0, 0, 0, 0);
    hdc = FUNC1(NULL);
    FUNC7(FUNC4(hdc, hrgn1), 0);
    FUNC7(FUNC5(hrgn1, 10, 10), NULLREGION);

}