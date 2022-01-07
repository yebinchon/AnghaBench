
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nmtti ;
struct TYPE_7__ {int idFrom; int code; } ;
struct TYPE_9__ {TYPE_2__ hdr; } ;
struct TYPE_6__ {int member_0; } ;
struct TYPE_8__ {int member_0; int member_1; int member_6; int member_5; TYPE_1__ member_4; int member_3; int member_2; } ;
typedef TYPE_3__ TBBUTTON ;
typedef TYPE_4__ NMTTDISPINFOW ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int HMENU ;


 int CCM_SETUNICODEFORMAT ;
 int * CreateWindowExA (int ,int ,int *,int,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int DestroyWindow (int *) ;
 int FALSE ;
 int GetModuleHandleA (int *) ;
 int NUM_MSG_SEQUENCES ;
 int PARENT_SEQ_INDEX ;
 scalar_t__ SendMessageA (int *,int ,int,int ) ;
 int TBSTATE_ENABLED ;
 int TB_ADDBUTTONSA ;
 int TB_GETTOOLTIPS ;
 int TOOLBARCLASSNAMEA ;
 int TRUE ;
 int TTN_GETDISPINFOW ;
 int WM_NOTIFY ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int flush_sequences (int ,int ) ;
 int g_ResetDispTextPtr ;
 int hMainWnd ;
 int memset (TYPE_4__*,int ,int) ;
 int ok (int ,char*,int *) ;
 int ok_sequence (int ,int ,int ,char*,int) ;
 int rebuild_toolbar (int **) ;
 int sequences ;
 int ttgetdispinfo_parent_seq ;

__attribute__((used)) static void test_tooltip(void)
{
    HWND hToolbar = ((void*)0);
    const TBBUTTON buttons_disp[] = {
        {-1, 20, TBSTATE_ENABLED, 0, {0, }, 0, -1},
        {0, 21, TBSTATE_ENABLED, 0, {0, }, 0, -1},
    };
    NMTTDISPINFOW nmtti;
    HWND tooltip;

    rebuild_toolbar(&hToolbar);

    SendMessageA(hToolbar, TB_ADDBUTTONSA, 2, (LPARAM)buttons_disp);


    memset(&nmtti, 0, sizeof(nmtti));
    nmtti.hdr.code = TTN_GETDISPINFOW;
    nmtti.hdr.idFrom = 20;

    SendMessageA(hToolbar, CCM_SETUNICODEFORMAT, FALSE, 0);

    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    SendMessageA(hToolbar, WM_NOTIFY, 0, (LPARAM)&nmtti);
    ok_sequence(sequences, PARENT_SEQ_INDEX, ttgetdispinfo_parent_seq,
                "dispinfo from tooltip", FALSE);

    g_ResetDispTextPtr = TRUE;
    SendMessageA(hToolbar, WM_NOTIFY, 0, (LPARAM)&nmtti);
    g_ResetDispTextPtr = FALSE;

    DestroyWindow(hToolbar);


    hToolbar = CreateWindowExA(0, TOOLBARCLASSNAMEA, ((void*)0), WS_CHILD | WS_VISIBLE, 0, 0, 0, 0,
        hMainWnd, (HMENU)5, GetModuleHandleA(((void*)0)), ((void*)0));
    tooltip = (HWND)SendMessageA(hToolbar, TB_GETTOOLTIPS, 0, 0);
    ok(tooltip == ((void*)0), "got %p\n", tooltip);
    DestroyWindow(hToolbar);
}
