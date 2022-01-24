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
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  SPY_DEFWNDPROC 130 
#define  SPY_DISPATCHMESSAGE 129 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ SPY_INDENT_UNIT ; 
#define  SPY_SENDMESSAGE 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

void FUNC16( INT iFlag, HWND hWnd, UINT msg,
                       WPARAM wParam, LPARAM lParam )
{
    SPY_INSTANCE sp_e;
    int indent;
    DWORD save_error = FUNC1();

    if (!FUNC14() || FUNC10(msg)) return;

    sp_e.msgnum = msg;
    sp_e.msg_hwnd = hWnd;
    sp_e.lParam = lParam;
    sp_e.wParam = wParam;
    FUNC5(&sp_e);
    FUNC4(&sp_e);
    indent = FUNC11();

    /* each SPY_SENDMESSAGE must be complemented by call to SPY_ExitMessage */
    switch(iFlag)
    {
    case SPY_DISPATCHMESSAGE:
        FUNC7("%*s(%p) %-16s [%04x] %s dispatched  wp=%08lx lp=%08lx\n",
                        indent, "", hWnd, FUNC8(sp_e.wnd_name), msg,
                        sp_e.msg_name, wParam, lParam);
        break;

    case SPY_SENDMESSAGE:
        {
            char taskName[20];
            DWORD tid = FUNC2( hWnd, NULL );

            if (tid == FUNC0()) FUNC15( taskName, "self" );
            else FUNC13( taskName, "tid %04ld", FUNC0() );

            FUNC7("%*s(%p) %-16s [%04x] %s sent from %s wp=%08lx lp=%08lx\n",
                  indent, "", hWnd, FUNC8(sp_e.wnd_name), msg,
                  sp_e.msg_name, taskName, wParam, lParam );
            FUNC3(&sp_e, TRUE);
        }
        break;

    case SPY_DEFWNDPROC:
        if (FUNC9()) return;
        FUNC7("%*s(%p)  DefWindowProc:[%04x] %s  wp=%08lx lp=%08lx\n",
              indent, "", hWnd, msg, sp_e.msg_name, wParam, lParam );
        break;
    }
    FUNC12( indent + SPY_INDENT_UNIT );
    FUNC6( save_error );
}