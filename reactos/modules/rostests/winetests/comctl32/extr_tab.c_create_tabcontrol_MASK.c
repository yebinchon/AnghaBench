#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mask; char* pszText; int iImage; } ;
typedef  TYPE_1__ TCITEMA ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  RDW_UPDATENOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  TCM_INSERTITEMA ; 
 int TCS_FOCUSNEVER ; 
 int /*<<< orphan*/  WC_TABCONTROLA ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int WS_CLIPCHILDREN ; 
 int WS_CLIPSIBLINGS ; 
 scalar_t__ hFont ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static HWND
FUNC7 (DWORD style, DWORD mask)
{
    HWND handle;
    TCITEMA tcNewTab;
    static char text1[] = "Tab 1",
    text2[] = "Wide Tab 2",
    text3[] = "T 3";

    handle = FUNC0(WC_TABCONTROLA, "TestTab",
            WS_CLIPSIBLINGS | WS_CLIPCHILDREN | TCS_FOCUSNEVER | style, 10, 10, 300, 100, NULL,
            NULL, NULL, 0);
    FUNC6(handle != NULL, "failed to create tab wnd\n");

    FUNC3(handle, GWL_STYLE, WS_CLIPSIBLINGS | WS_CLIPCHILDREN | TCS_FOCUSNEVER | style);
    FUNC2(handle, WM_SETFONT, 0, (LPARAM)hFont);

    tcNewTab.mask = mask;
    tcNewTab.pszText = text1;
    tcNewTab.iImage = 0;
    FUNC2(handle, TCM_INSERTITEMA, 0, (LPARAM)&tcNewTab);
    tcNewTab.pszText = text2;
    tcNewTab.iImage = 1;
    FUNC2(handle, TCM_INSERTITEMA, 1, (LPARAM)&tcNewTab);
    tcNewTab.pszText = text3;
    tcNewTab.iImage = 2;
    FUNC2(handle, TCM_INSERTITEMA, 2, (LPARAM)&tcNewTab);

    if (winetest_interactive)
    {
        FUNC4 (handle, SW_SHOW);
        FUNC1 (handle, NULL, 0, RDW_UPDATENOW);
        FUNC5 (1000);
    }

    return handle;
}