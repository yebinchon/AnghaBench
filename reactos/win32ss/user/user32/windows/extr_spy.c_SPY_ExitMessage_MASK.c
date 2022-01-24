#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/  msg_name; int /*<<< orphan*/  wnd_name; int /*<<< orphan*/  wParam; int /*<<< orphan*/  lParam; int /*<<< orphan*/  msg_hwnd; int /*<<< orphan*/  msgnum; } ;
typedef  TYPE_1__ SPY_INSTANCE ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ SPY_INDENT_UNIT ; 
#define  SPY_RESULT_DEFWND 129 
#define  SPY_RESULT_OK 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  message ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12( INT iFlag, HWND hWnd, UINT msg, LRESULT lReturn,
                       WPARAM wParam, LPARAM lParam )
{
    SPY_INSTANCE sp_e;
    int indent;
    DWORD save_error = FUNC0();

    if (!FUNC6(message) || FUNC9(msg) ||
        (FUNC8() && iFlag == SPY_RESULT_DEFWND))
        return;

    sp_e.msgnum = msg;
    sp_e.msg_hwnd   = hWnd;
    sp_e.lParam = lParam;
    sp_e.wParam = wParam;
    FUNC3(&sp_e);
    FUNC2(&sp_e);

    if ((indent = FUNC10()))
    {
        indent -= SPY_INDENT_UNIT;
        FUNC11( indent );
    }

    switch(iFlag)
    {
    case SPY_RESULT_DEFWND:
        FUNC5(" %*s(%p)  DefWindowProc: [%04x] %s returned %08lx\n",
              indent, "", hWnd, msg, sp_e.msg_name, lReturn );
        break;

    case SPY_RESULT_OK:
        FUNC5(" %*s(%p) %-16s [%04x] %s returned %08lx\n",
                        indent, "", hWnd, FUNC7(sp_e.wnd_name), msg,
                        sp_e.msg_name, lReturn );
        FUNC1(&sp_e, FALSE);
        break;
    }
    FUNC4( save_error );
}