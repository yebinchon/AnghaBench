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
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC8(HDC hdc, BOOL bMemDC)
{
    FUNC4(hdc);
    FUNC2(hdc);
    FUNC5(hdc);

    FUNC3(0);
    FUNC6(FUNC1(hdc, 2) == 0);
    FUNC6(FUNC0() == ERROR_INVALID_PARAMETER);

    FUNC3(0);
    FUNC6(FUNC1(hdc, 0) == 0);
    FUNC6(FUNC0() == ERROR_INVALID_PARAMETER);

    FUNC3(0);
    FUNC6(FUNC1(hdc, -2) == 0);
    FUNC6(FUNC0() == ERROR_INVALID_PARAMETER);

    FUNC3(0);
    FUNC6(FUNC1(hdc, 1) == 1);
    FUNC6(FUNC0() == 0);

    FUNC7(hdc, bMemDC);
}