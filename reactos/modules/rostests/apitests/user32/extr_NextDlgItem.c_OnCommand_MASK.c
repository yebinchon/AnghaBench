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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IDC_END 131 
#define  IDC_TEST1 130 
#define  IDC_TEST2 129 
#define  IDC_TEST3 128 
 int /*<<< orphan*/  IDOK ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_COMMAND ; 

__attribute__((used)) static void
FUNC6(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    switch (id)
    {
        case IDC_TEST1:
            FUNC0(hwnd);
            FUNC5(hwnd, WM_COMMAND, FUNC4(IDC_TEST2, 0), 0);
            break;
        case IDC_TEST2:
            FUNC1(hwnd);
            FUNC5(hwnd, WM_COMMAND, FUNC4(IDC_TEST3, 0), 0);
            break;
        case IDC_TEST3:
            FUNC2(hwnd);
            FUNC5(hwnd, WM_COMMAND, FUNC4(IDC_END, 0), 0);
            break;
        case IDC_END:
            FUNC3(hwnd, IDOK);
            break;
    }
}