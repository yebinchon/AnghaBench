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
typedef  scalar_t__ WNDPROC ;
struct TYPE_3__ {int x; int y; } ;
typedef  TYPE_1__ POINT ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  COMBINED_SEQ_INDEX ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  GWLP_WNDPROC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WC_EDITA ; 
 int WS_CHILD ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 scalar_t__ edit_subclass_proc ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  killfocus_combined_seq ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sequences ; 
 int /*<<< orphan*/  setfocus_combined_seq ; 

__attribute__((used)) static void FUNC15(void)
{
    HWND hwnd, parent_wnd;
    WNDPROC oldproc;
    MSG msg;
    POINT orig_pos;

    FUNC4(&orig_pos);

    parent_wnd = FUNC0("ParentWnd", "", WS_OVERLAPPEDWINDOW,
            0, 0, 200, 200, NULL, NULL, FUNC5(NULL), NULL);
    FUNC13(parent_wnd != NULL, "Failed to create control parent.\n");
    FUNC10(parent_wnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE|SWP_NOMOVE);
    FUNC11(parent_wnd, SW_SHOW);

    hwnd = FUNC1(0, WC_EDITA, "Test", WS_CHILD | WS_VISIBLE, 0, 0, 100, 100,
            parent_wnd, (HMENU)1, FUNC5(NULL), NULL);
    FUNC13(hwnd != NULL, "Failed to create Edit control.\n");

    oldproc = (WNDPROC)FUNC9(hwnd, GWLP_WNDPROC, (LONG_PTR)edit_subclass_proc);
    FUNC9(hwnd, GWLP_USERDATA, (LONG_PTR)oldproc);

    FUNC7(400, 400);

    FUNC8(parent_wnd);
    FUNC12(sequences, NUM_MSG_SEQUENCES);
    FUNC8(hwnd);
    while (FUNC6(&msg, 0, 0, 0, PM_REMOVE)) FUNC3(&msg);
    FUNC14(sequences, COMBINED_SEQ_INDEX, setfocus_combined_seq, "Set focus", TRUE);

    FUNC12(sequences, NUM_MSG_SEQUENCES);
    FUNC8(parent_wnd);
    while (FUNC6(&msg, 0, 0, 0, PM_REMOVE)) FUNC3(&msg);
    FUNC14(sequences, COMBINED_SEQ_INDEX, killfocus_combined_seq, "Kill focus", TRUE);

    FUNC7(orig_pos.x, orig_pos.y);

    FUNC2(hwnd);
}