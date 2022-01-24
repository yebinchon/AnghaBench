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
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9()
{
    HDC hdc;

    FUNC4(0);
    FUNC8(FUNC5(0, 0, 0, FUNC3(255,255,255)), -1);
    FUNC7(ERROR_INVALID_HANDLE);

    /* Test an info DC */
    hdc = FUNC1("DISPLAY", NULL, NULL, NULL);
    FUNC6(hdc != 0, "\n");
    FUNC4(0);
    FUNC8(FUNC5(hdc, 0, 0, 0), -1);
    FUNC8(FUNC5(hdc, 0, 0, FUNC3(255,255,255)), -1);
    FUNC7(0);
    FUNC2(hdc);

    /* Test a mem DC without selecting a bitmap */
    hdc = FUNC0(NULL);
    FUNC6(hdc != 0, "\n");
    FUNC4(0);
    FUNC8(FUNC5(hdc, 0, 0, 0), -1);
    FUNC7(0);
    FUNC2(hdc);

    /* Test deleted DC */
    FUNC8(FUNC5(hdc, 0, 0, 0), -1);

}