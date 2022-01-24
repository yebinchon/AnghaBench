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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  msg_name; scalar_t__* wnd_class; scalar_t__ wParam; scalar_t__ lParam; int /*<<< orphan*/  msg_hwnd; int /*<<< orphan*/  msgnum; } ;
typedef  TYPE_1__ SPY_INSTANCE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (char*,int /*<<< orphan*/ ) ; 

const char *FUNC4( UINT msg, HWND hWnd )
{
    SPY_INSTANCE ext_sp_e;
    DWORD save_error = FUNC0();

    ext_sp_e.msgnum = msg;
    ext_sp_e.msg_hwnd   = hWnd;
    ext_sp_e.lParam = 0;
    ext_sp_e.wParam = 0;
    ext_sp_e.wnd_class[0] = 0;
    FUNC1(&ext_sp_e);
    FUNC2( save_error );
    return FUNC3("%s", ext_sp_e.msg_name);
}