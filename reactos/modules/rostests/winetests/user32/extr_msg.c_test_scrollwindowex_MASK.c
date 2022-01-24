#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_2; int member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RECT ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int,int,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int SW_ERASE ; 
 int SW_INVALIDATE ; 
 int SW_SCROLLCHILDREN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ScrollWindowPaint1 ; 
 int /*<<< orphan*/  ScrollWindowPaint2 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int WS_CAPTION ; 
 int WS_CHILD ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  WmEmptySeq ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HWND hwnd, hchild;
    RECT rect={0,0,130,130};

    hwnd = FUNC0(0, "TestWindowClass", "Test Scroll",
            WS_VISIBLE|WS_OVERLAPPEDWINDOW,
            100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC7 (hwnd != 0, "Failed to create overlapped window\n");
    hchild = FUNC0(0, "TestWindowClass", "Test child", 
            WS_VISIBLE|WS_CAPTION|WS_CHILD,
            10, 10, 150, 150, hwnd, 0, 0, NULL);
    FUNC7 (hchild != 0, "Failed to create child\n");
    FUNC4(hwnd);
    FUNC5();
    FUNC6();

    /* scroll without the child window */
    FUNC9("start scroll\n");
    FUNC3( hwnd, 10, 10, &rect, NULL, NULL, NULL,
            SW_ERASE|SW_INVALIDATE);
    FUNC8(WmEmptySeq, "ScrollWindowEx", FALSE);
    FUNC9("end scroll\n");
    FUNC6();
    FUNC5();
    FUNC8(ScrollWindowPaint1, "ScrollWindowEx", FALSE);
    FUNC5();
    FUNC6();

    /* Now without the SW_ERASE flag */
    FUNC9("start scroll\n");
    FUNC3( hwnd, 10, 10, &rect, NULL, NULL, NULL, SW_INVALIDATE);
    FUNC8(WmEmptySeq, "ScrollWindowEx", FALSE);
    FUNC9("end scroll\n");
    FUNC6();
    FUNC5();
    FUNC8(ScrollWindowPaint2, "ScrollWindowEx", FALSE);
    FUNC5();
    FUNC6();

    /* now scroll the child window as well */
    FUNC9("start scroll\n");
    FUNC3( hwnd, 10, 10, &rect, NULL, NULL, NULL,
            SW_SCROLLCHILDREN|SW_ERASE|SW_INVALIDATE);
    /* wine sends WM_POSCHANGING, WM_POSCHANGED messages */
    /* windows sometimes a WM_MOVE */
    FUNC8(WmEmptySeq, "ScrollWindowEx", TRUE);
    FUNC9("end scroll\n");
    FUNC6();
    FUNC5();
    FUNC8(ScrollWindowPaint1, "ScrollWindowEx", FALSE);
    FUNC5();
    FUNC6();

    /* now scroll with ScrollWindow() */
    FUNC9("start scroll with ScrollWindow\n");
    FUNC2( hwnd, 5, 5, NULL, NULL);
    FUNC9("end scroll\n");
    FUNC6();
    FUNC5();
    FUNC8(ScrollWindowPaint1, "ScrollWindow", FALSE);

    FUNC7(FUNC1(hchild), "failed to destroy window\n");
    FUNC7(FUNC1(hwnd), "failed to destroy window\n");
    FUNC6();
}