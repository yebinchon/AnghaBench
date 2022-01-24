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
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int,int,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SW_HIDE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SetActiveWindowSeq0 ; 
 int /*<<< orphan*/  SetActiveWindowSeq1 ; 
 int /*<<< orphan*/  SetActiveWindowSeq2 ; 
 int /*<<< orphan*/  SetActiveWindowSeq3 ; 
 int /*<<< orphan*/  SetActiveWindowSeq4 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_POPUP ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    HWND hwnd, popup, ret;

    hwnd = FUNC0(0, "TestWindowClass", "Test SetActiveWindow",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, NULL);

    popup = FUNC0(0, "TestWindowClass", "Test SetActiveWindow",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE | WS_POPUP,
                           100, 100, 200, 200, hwnd, 0, 0, NULL);

    FUNC6(hwnd != 0, "Failed to create overlapped window\n");
    FUNC6(popup != 0, "Failed to create popup window\n");
    FUNC3( popup );
    FUNC5();

    FUNC8("SetActiveWindow(0)\n");
    ret = FUNC2(0);
    FUNC6( ret == popup, "Failed to SetActiveWindow(0)\n");
    FUNC7(SetActiveWindowSeq0, "SetActiveWindow(0)", FALSE);
    FUNC5();

    FUNC8("SetActiveWindow(hwnd), hwnd visible\n");
    ret = FUNC2(hwnd);
    if (ret == hwnd) FUNC7(SetActiveWindowSeq1, "SetActiveWindow(hwnd), hwnd visible", TRUE);
    FUNC5();

    FUNC8("SetActiveWindow(popup), hwnd visible, popup visible\n");
    ret = FUNC2(popup);
    FUNC6( ret == hwnd, "Failed to SetActiveWindow(popup), popup visible\n");
    FUNC7(SetActiveWindowSeq2, "SetActiveWindow(popup), hwnd visible, popup visible", FALSE);
    FUNC5();

    FUNC4(hwnd, SW_HIDE);
    FUNC4(popup, SW_HIDE);
    FUNC5();

    FUNC8("SetActiveWindow(hwnd), hwnd not visible\n");
    ret = FUNC2(hwnd);
    FUNC6( ret == NULL, "SetActiveWindow(hwnd), hwnd not visible, previous is %p\n", ret );
    FUNC7(SetActiveWindowSeq3, "SetActiveWindow(hwnd), hwnd not visible", TRUE);
    FUNC5();

    FUNC8("SetActiveWindow(popup), hwnd not visible, popup not visible\n");
    ret = FUNC2(popup);
    FUNC6( ret == hwnd, "Failed to SetActiveWindow(popup)\n");
    FUNC7(SetActiveWindowSeq4, "SetActiveWindow(popup), hwnd not visible, popup not visible", TRUE);
    FUNC5();

    FUNC8("done\n");

    FUNC1(hwnd);
}