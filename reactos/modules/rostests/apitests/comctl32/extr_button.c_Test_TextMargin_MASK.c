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
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_GETTEXTMARGIN ; 
 int /*<<< orphan*/  BCM_SETTEXTMARGIN ; 
 int /*<<< orphan*/  BS_DEFPUSHBUTTON ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int) ; 

void FUNC7()
{
    RECT rc;
    BOOL ret;
    HWND hwnd1;
    
    hwnd1 = FUNC0(L"Button", L"Test1", 0, 10, 10, 100, 100, 0, NULL, NULL, NULL);
    FUNC5 (hwnd1 != NULL, "Expected CreateWindowW to succeed\n");
    FUNC4(hwnd1, L"", L"");

    ret = FUNC2(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    FUNC6(rc, 1, 1, 1, 1);
    
    FUNC3(&rc, 0,0,0,0);
    ret = FUNC2(hwnd1, BCM_SETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_SETTEXTMARGIN to succeed\n");
    
    ret = FUNC2(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    FUNC6(rc, 0, 0, 0, 0);
    
    FUNC3(&rc, -1,-1,-1,-1);
    ret = FUNC2(hwnd1, BCM_SETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_SETTEXTMARGIN to succeed\n");
    
    ret = FUNC2(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    FUNC6(rc, -1, -1, -1, -1);

    FUNC3(&rc, 1000,1000,1000,1000);
    ret = FUNC2(hwnd1, BCM_SETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_SETTEXTMARGIN to succeed\n");
    
    ret = FUNC2(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    FUNC6(rc, 1000, 1000, 1000, 1000);
    
    FUNC1(hwnd1);

    hwnd1 = FUNC0(L"Button", L"Test1", BS_DEFPUSHBUTTON, 10, 10, 100, 100, 0, NULL, NULL, NULL);
    FUNC5 (hwnd1 != NULL, "Expected CreateWindowW to succeed\n");
    FUNC4(hwnd1, L"", L"");

    ret = FUNC2(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    FUNC5 (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    FUNC6(rc, 1, 1, 1, 1);

    FUNC1(hwnd1);

}