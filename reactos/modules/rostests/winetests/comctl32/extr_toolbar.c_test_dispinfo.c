
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
struct TYPE_4__ {int member_0; int member_1; int member_6; int member_5; TYPE_1__ member_4; int member_3; int member_2; } ;
typedef TYPE_2__ TBBUTTON ;
typedef int LPARAM ;
typedef int * HWND ;
typedef scalar_t__ BOOL ;


 int CCM_GETUNICODEFORMAT ;
 int CCM_SETUNICODEFORMAT ;
 int DestroyWindow (int *) ;
 long FALSE ;
 scalar_t__ HINST_COMMCTRL ;
 long IDB_HIST_SMALL_COLOR ;
 int InvalidateRect (int *,int *,long) ;
 int SW_SHOW ;
 scalar_t__ SendMessageA (int *,int ,long,int ) ;
 int ShowWindow (int *,int ) ;
 scalar_t__ TBNF_IMAGE ;
 int TBSTATE_ENABLED ;
 int TB_ADDBUTTONSA ;
 int TB_LOADIMAGES ;
 long TRUE ;
 int UpdateWindow (int *) ;
 int compare (scalar_t__,long,char*) ;
 scalar_t__ g_dwExpectedDispInfoMask ;
 int rebuild_toolbar (int **) ;

__attribute__((used)) static void test_dispinfo(void)
{
    HWND hToolbar = ((void*)0);
    const TBBUTTON buttons_disp[] = {
        {-1, 20, TBSTATE_ENABLED, 0, {0, }, 0, -1},
        {0, 21, TBSTATE_ENABLED, 0, {0, }, 0, -1},
    };
    BOOL ret;

    rebuild_toolbar(&hToolbar);
    SendMessageA(hToolbar, TB_LOADIMAGES, IDB_HIST_SMALL_COLOR, (LPARAM)HINST_COMMCTRL);
    SendMessageA(hToolbar, TB_ADDBUTTONSA, 2, (LPARAM)buttons_disp);
    g_dwExpectedDispInfoMask = TBNF_IMAGE;


    compare((BOOL)SendMessageA(hToolbar, CCM_GETUNICODEFORMAT, 0, 0), 0, "%d");
    ShowWindow(hToolbar, SW_SHOW);
    UpdateWindow(hToolbar);

    ret = (BOOL)SendMessageA(hToolbar, CCM_SETUNICODEFORMAT, TRUE, 0);
    compare(ret, FALSE, "%d");
    compare(SendMessageA(hToolbar, CCM_GETUNICODEFORMAT, 0, 0), 1L, "%ld");
    InvalidateRect(hToolbar, ((void*)0), FALSE);
    UpdateWindow(hToolbar);

    ret = (BOOL)SendMessageA(hToolbar, CCM_SETUNICODEFORMAT, FALSE, 0);
    compare(ret, TRUE, "%d");
    compare(SendMessageA(hToolbar, CCM_GETUNICODEFORMAT, 0, 0), 0L, "%ld");
    InvalidateRect(hToolbar, ((void*)0), FALSE);
    UpdateWindow(hToolbar);

    DestroyWindow(hToolbar);
    g_dwExpectedDispInfoMask = 0;
}
