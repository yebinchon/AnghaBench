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
typedef  int /*<<< orphan*/  HRGN ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLEXREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RGN_OR ; 
 int /*<<< orphan*/  SIMPLEREGION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6()
{
    HRGN hrgn1, hrgn2, hrgn3;

    hrgn1 = FUNC1(0, 0, 0, 0);
    hrgn2 = FUNC1(0, 0, 5, 5);
    hrgn3 = FUNC1(5, 0, 10, 5);
    FUNC5(FUNC0(hrgn1, hrgn2, hrgn3, RGN_OR), SIMPLEREGION);
    FUNC3(hrgn2, 0, 0, 10, 5);
    FUNC4(FUNC2(hrgn1, hrgn2), "Region is not correct\n");

    FUNC3(hrgn2, 0, 0, 10, 10);
    FUNC3(hrgn3, 10, 10, 20, 20);
    FUNC5(FUNC0(hrgn1, hrgn2, hrgn3, RGN_OR), COMPLEXREGION);
    FUNC3(hrgn2, 10, 0, 20, 10);
    FUNC5(FUNC0(hrgn1, hrgn1, hrgn2, RGN_OR), COMPLEXREGION);
    FUNC5(FUNC0(hrgn1, hrgn1, hrgn1, RGN_OR), COMPLEXREGION);
    FUNC3(hrgn2, 0, 10, 10, 20);
    FUNC5(FUNC0(hrgn1, hrgn1, hrgn2, RGN_OR), SIMPLEREGION);
    FUNC3(hrgn2, 0, 0, 20, 20);
    FUNC4(FUNC2(hrgn1, hrgn2), "Region is not correct\n");

}