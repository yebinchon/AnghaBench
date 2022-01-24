#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rc ;
struct TYPE_6__ {int expectedRows; int /*<<< orphan*/  bLarger; int /*<<< orphan*/  nRows; } ;
typedef  TYPE_1__ TBBUTTON ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int CCS_NOMOVEY ; 
 int CCS_NOPARENTALIGN ; 
 int CCS_NORESIZE ; 
 int CCS_TOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TBSTYLE_CHECKGROUP ; 
 int TBSTYLE_FLAT ; 
 int /*<<< orphan*/  TB_AUTOSIZE ; 
 int /*<<< orphan*/  TB_GETROWS ; 
 int /*<<< orphan*/  TB_SETROWS ; 
 int WS_CHILD ; 
 int WS_CLIPCHILDREN ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  hMainWnd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* tbrows_results ; 

__attribute__((used)) static void FUNC8(void)
{
    TBBUTTON buttons[9];
    HWND hToolbar;
    DWORD i;

    for (i=0; i<9; i++)
        FUNC3(buttons+i, 1000+i, TBSTYLE_FLAT | TBSTYLE_CHECKGROUP, 0);

    /* Test 1 - 9 buttons */
    hToolbar = FUNC7(hMainWnd,
        WS_VISIBLE | WS_CLIPCHILDREN | WS_CHILD | CCS_NORESIZE | CCS_NOPARENTALIGN
        | CCS_NOMOVEY | CCS_TOP,
        0,
        0, NULL, 0,
        buttons, FUNC0(buttons),
        20, 20, 0, 0, sizeof(TBBUTTON));
    FUNC6(hToolbar != NULL, "Toolbar creation\n");
    FUNC6(FUNC4(hToolbar, TB_AUTOSIZE, 0, 0) == 0, "TB_AUTOSIZE failed\n");

    /* test setting rows to each of 1-10 with bLarger true and false */
    for (i=0; i<FUNC0(tbrows_results); i++) {
        RECT rc;
        int rows;

        FUNC5(&rc, 0xCC, sizeof(rc));
        FUNC4(hToolbar, TB_SETROWS,
                     FUNC2(tbrows_results[i].nRows, tbrows_results[i].bLarger),
                     (LPARAM) &rc);

        rows = FUNC4(hToolbar, TB_GETROWS, FUNC2(0,0), FUNC2(0,0));
        FUNC6(rows == tbrows_results[i].expectedRows,
                   "[%d] Unexpected number of rows %d (expected %d)\n", i, rows,
                   tbrows_results[i].expectedRows);
    }

    FUNC1(hToolbar);
}