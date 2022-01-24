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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_APPLY_BUTTON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSBTN_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_bNotified ; 

__attribute__((used)) static void FUNC8(HWND hwnd, UINT id)
{
    HWND hwndParent, hwndApply;

    FUNC3(hwnd, id);

    FUNC7(s_bNotified, TRUE);

    hwndParent = FUNC1(hwnd);
    hwndApply = FUNC0(hwndParent, IDC_APPLY_BUTTON);
    FUNC7(FUNC2(hwndApply), FALSE);

    FUNC4(hwndParent, hwnd);
    FUNC7(FUNC2(hwndApply), TRUE);

    FUNC6(hwndParent, hwnd);
    FUNC7(FUNC2(hwndApply), FALSE);

    FUNC5(hwndParent, PSBTN_OK);
}