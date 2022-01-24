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
typedef  int /*<<< orphan*/ * HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

void FUNC7()
{
    BOOL ret;
    HWND hWnd, hWndClipOwner;

    ret = FUNC5(NULL);
    FUNC6 (ret, "OpenClipboard failed\n");

    ret = FUNC3();
    FUNC6 (ret, "EmptyClipboard failed\n");

    ret = FUNC0();
    FUNC6 (ret, "CloseClipboard failed\n");

    hWndClipOwner = FUNC4();
    FUNC6 (hWndClipOwner == NULL, "Expected NULL owner\n");

    hWnd = FUNC1(L"static", L"static", WS_OVERLAPPEDWINDOW, 20, 20, 300, 300, NULL, NULL, 0, NULL);
    FUNC6 (hWnd != 0 , "CreateWindowW failed\n");

    ret = FUNC5(hWnd);
    FUNC6 (ret, "OpenClipboard failed\n");

    hWndClipOwner = FUNC4();
    FUNC6 (hWndClipOwner == NULL, "Expected NULL owner\n");

    ret = FUNC3();
    FUNC6 (ret, "EmptyClipboard failed\n");

    ret = FUNC0();
    FUNC6 (ret, "CloseClipboard failed\n");

    hWndClipOwner = FUNC4();
    FUNC6 (hWndClipOwner == hWnd, "Expected hWnd owner\n");

    FUNC2(hWnd);
}