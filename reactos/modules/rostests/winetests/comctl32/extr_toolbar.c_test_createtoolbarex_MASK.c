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
typedef  int /*<<< orphan*/  btns ;
typedef  int /*<<< orphan*/  TBBUTTON ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDB_BITMAP_128x15 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_GETBUTTONSIZE ; 
 int /*<<< orphan*/  WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*) ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    HWND hToolbar;
    TBBUTTON btns[3];
    FUNC4(&btns, sizeof(btns));

    hToolbar = FUNC6(hMainWnd, WS_VISIBLE, 1, 16, FUNC2(NULL), IDB_BITMAP_128x15, btns,
        3, 20, 20, 16, 16, sizeof(TBBUTTON));
    FUNC0(16, 20, 20);
    FUNC5((int)FUNC3(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x1a001b, "%x");
    FUNC1(hToolbar);

    hToolbar = FUNC6(hMainWnd, WS_VISIBLE, 1, 16, FUNC2(NULL), IDB_BITMAP_128x15, btns,
        3, 4, 4, 16, 16, sizeof(TBBUTTON));
    FUNC0(32, 4, 4);
    FUNC5((int)FUNC3(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0xa000b, "%x");
    FUNC1(hToolbar);

    hToolbar = FUNC6(hMainWnd, WS_VISIBLE, 1, 16, FUNC2(NULL), IDB_BITMAP_128x15, btns,
        3, 0, 8, 12, 12, sizeof(TBBUTTON));
    FUNC0(16, 12, 12);
    FUNC5((int)FUNC3(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x120013, "%x");
    FUNC1(hToolbar);

    hToolbar = FUNC6(hMainWnd, WS_VISIBLE, 1, 16, FUNC2(NULL), IDB_BITMAP_128x15, btns,
        3, -1, 8, 12, 12, sizeof(TBBUTTON));
    FUNC0(16, 12, 8);
    FUNC5((int)FUNC3(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0xe0013, "%x");
    FUNC1(hToolbar);

    hToolbar = FUNC6(hMainWnd, WS_VISIBLE, 1, 16, FUNC2(NULL), IDB_BITMAP_128x15, btns,
        3, -1, 8, -1, 12, sizeof(TBBUTTON));
    FUNC0(16, 16, 8);
    FUNC5((int)FUNC3(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0xe0017, "%x");
    FUNC1(hToolbar);

    hToolbar = FUNC6(hMainWnd, WS_VISIBLE, 1, 16, FUNC2(NULL), IDB_BITMAP_128x15, btns,
        3, 0, 0, 12, -1, sizeof(TBBUTTON));
    FUNC0(16, 12, 16);
    FUNC5((int)FUNC3(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x160013, "%x");
    FUNC1(hToolbar);

    hToolbar = FUNC6(hMainWnd, WS_VISIBLE, 1, 16, FUNC2(NULL), IDB_BITMAP_128x15, btns,
        3, 0, 0, 0, 12, sizeof(TBBUTTON));
    FUNC0(16, 16, 16);
    FUNC5((int)FUNC3(hToolbar, TB_GETBUTTONSIZE, 0, 0), 0x160017, "%x");
    FUNC1(hToolbar);
}