#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int right; int left; int top; int bottom; } ;
struct TYPE_4__ {int cbSize; int uId; int lParam; int /*<<< orphan*/  rect; scalar_t__ lpszText; int /*<<< orphan*/  uFlags; int /*<<< orphan*/  hinst; int /*<<< orphan*/ * hwnd; } ;
typedef  TYPE_1__ TTTOOLINFOA ;
typedef  TYPE_2__ RECT ;
typedef  scalar_t__ LPSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 int /*<<< orphan*/  PARENT_SEQ_INDEX ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOOLTIPS_CLASSA ; 
 int /*<<< orphan*/  TTDT_INITIAL ; 
 int /*<<< orphan*/  TTF_SUBCLASS ; 
 int /*<<< orphan*/  TTM_ADDTOOLA ; 
 int /*<<< orphan*/  TTM_SETDELAYTIME ; 
 int /*<<< orphan*/  TTS_ALWAYSTIP ; 
 int /*<<< orphan*/  WS_EX_TOPMOST ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sequences ; 
 int /*<<< orphan*/  ttn_show_parent_seq ; 

__attribute__((used)) static void FUNC15(void)
{
    HWND hwndTip, hwnd;
    TTTOOLINFOA ti;
    RECT rect;
    BOOL ret;

    hwnd = FUNC10();
    FUNC13(hwnd != NULL, "Failed to create parent window.\n");

    /* Put cursor outside the window */
    FUNC4(hwnd, &rect);
    FUNC7(rect.right + 200, 0);

    FUNC9(hwnd, SW_SHOWNORMAL);
    FUNC11(100);

    /* Create tooltip */
    hwndTip = FUNC0(WS_EX_TOPMOST, TOOLTIPS_CLASSA, NULL, TTS_ALWAYSTIP, 10, 10, 300, 300,
        hwnd, NULL, NULL, 0);
    FUNC13(hwndTip != NULL, "Failed to create tooltip window.\n");

    FUNC8(hwndTip, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE);

    ti.cbSize = sizeof(TTTOOLINFOA);
    ti.hwnd = hwnd;
    ti.hinst = FUNC3(NULL);
    ti.uFlags = TTF_SUBCLASS;
    ti.uId = 0x1234abcd;
    ti.lpszText = (LPSTR)"This is a test tooltip";
    ti.lParam = 0xdeadbeef;
    FUNC2(hwnd, &ti.rect);
    ret = FUNC6(hwndTip, TTM_ADDTOOLA, 0, (LPARAM)&ti);
    FUNC13(ret, "Failed to add a tool.\n");

    /* Make tooltip appear quickly */
    FUNC6(hwndTip, TTM_SETDELAYTIME, TTDT_INITIAL, FUNC5(1, 0));

    FUNC12(sequences, NUM_MSG_SEQUENCES);

    /* Put cursor inside window, tooltip will appear immediately */
    FUNC4(hwnd, &rect);
    FUNC7((rect.left + rect.right) / 2, (rect.top + rect.bottom) / 2);
    FUNC11(200);

    FUNC14(sequences, PARENT_SEQ_INDEX, ttn_show_parent_seq, "TTN_SHOW parent seq", FALSE);

    FUNC1(hwndTip);
    FUNC1(hwnd);
}