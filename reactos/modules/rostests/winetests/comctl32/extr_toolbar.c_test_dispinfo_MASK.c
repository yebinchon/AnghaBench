#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int member_0; int member_1; int member_6; int /*<<< orphan*/  member_5; TYPE_1__ member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_2__ TBBUTTON ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_GETUNICODEFORMAT ; 
 int /*<<< orphan*/  CCM_SETUNICODEFORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FALSE ; 
 scalar_t__ HINST_COMMCTRL ; 
 long IDB_HIST_SMALL_COLOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  SW_SHOW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ TBNF_IMAGE ; 
 int /*<<< orphan*/  TBSTATE_ENABLED ; 
 int /*<<< orphan*/  TB_ADDBUTTONSA ; 
 int /*<<< orphan*/  TB_LOADIMAGES ; 
 long TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,long,char*) ; 
 scalar_t__ g_dwExpectedDispInfoMask ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(void)
{
    HWND hToolbar = NULL;
    const TBBUTTON buttons_disp[] = {
        {-1, 20, TBSTATE_ENABLED, 0, {0, }, 0, -1},
        {0,  21, TBSTATE_ENABLED, 0, {0, }, 0, -1},
    };
    BOOL ret;

    FUNC6(&hToolbar);
    FUNC2(hToolbar, TB_LOADIMAGES, IDB_HIST_SMALL_COLOR, (LPARAM)HINST_COMMCTRL);
    FUNC2(hToolbar, TB_ADDBUTTONSA, 2, (LPARAM)buttons_disp);
    g_dwExpectedDispInfoMask = TBNF_IMAGE;
    /* Some TBN_GETDISPINFO tests will be done in MyWnd_Notify function.
     * We will receive TBN_GETDISPINFOW even if the control is ANSI */
    FUNC5((BOOL)FUNC2(hToolbar, CCM_GETUNICODEFORMAT, 0, 0), 0, "%d");
    FUNC3(hToolbar, SW_SHOW);
    FUNC4(hToolbar);

    ret = (BOOL)FUNC2(hToolbar, CCM_SETUNICODEFORMAT, TRUE, 0);
    FUNC5(ret, FALSE, "%d");
    FUNC5(FUNC2(hToolbar, CCM_GETUNICODEFORMAT, 0, 0), 1L, "%ld");
    FUNC1(hToolbar, NULL, FALSE);
    FUNC4(hToolbar);

    ret = (BOOL)FUNC2(hToolbar, CCM_SETUNICODEFORMAT, FALSE, 0);
    FUNC5(ret, TRUE, "%d");
    FUNC5(FUNC2(hToolbar, CCM_GETUNICODEFORMAT, 0, 0), 0L, "%ld");
    FUNC1(hToolbar, NULL, FALSE);
    FUNC4(hToolbar);

    FUNC0(hToolbar);
    g_dwExpectedDispInfoMask = 0;
}