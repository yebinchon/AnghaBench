
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int right; int left; int top; int bottom; } ;
struct TYPE_4__ {int cbSize; int uId; int lParam; int rect; scalar_t__ lpszText; int uFlags; int hinst; int * hwnd; } ;
typedef TYPE_1__ TTTOOLINFOA ;
typedef TYPE_2__ RECT ;
typedef scalar_t__ LPSTR ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int BOOL ;


 int * CreateWindowExA (int ,int ,int *,int ,int,int,int,int,int *,int *,int *,int ) ;
 int DestroyWindow (int *) ;
 int FALSE ;
 int GetClientRect (int *,int *) ;
 int GetModuleHandleA (int *) ;
 int GetWindowRect (int *,TYPE_2__*) ;
 int HWND_TOPMOST ;
 int MAKELPARAM (int,int ) ;
 int NUM_MSG_SEQUENCES ;
 int PARENT_SEQ_INDEX ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SW_SHOWNORMAL ;
 int SendMessageA (int *,int ,int ,int ) ;
 int SetCursorPos (int,int) ;
 int SetWindowPos (int *,int ,int ,int ,int ,int ,int) ;
 int ShowWindow (int *,int ) ;
 int TOOLTIPS_CLASSA ;
 int TTDT_INITIAL ;
 int TTF_SUBCLASS ;
 int TTM_ADDTOOLA ;
 int TTM_SETDELAYTIME ;
 int TTS_ALWAYSTIP ;
 int WS_EX_TOPMOST ;
 int * create_parent_window () ;
 int flush_events (int) ;
 int flush_sequences (int ,int ) ;
 int ok (int ,char*) ;
 int ok_sequence (int ,int ,int ,char*,int ) ;
 int sequences ;
 int ttn_show_parent_seq ;

__attribute__((used)) static void test_TTN_SHOW(void)
{
    HWND hwndTip, hwnd;
    TTTOOLINFOA ti;
    RECT rect;
    BOOL ret;

    hwnd = create_parent_window();
    ok(hwnd != ((void*)0), "Failed to create parent window.\n");


    GetWindowRect(hwnd, &rect);
    SetCursorPos(rect.right + 200, 0);

    ShowWindow(hwnd, SW_SHOWNORMAL);
    flush_events(100);


    hwndTip = CreateWindowExA(WS_EX_TOPMOST, TOOLTIPS_CLASSA, ((void*)0), TTS_ALWAYSTIP, 10, 10, 300, 300,
        hwnd, ((void*)0), ((void*)0), 0);
    ok(hwndTip != ((void*)0), "Failed to create tooltip window.\n");

    SetWindowPos(hwndTip, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE);

    ti.cbSize = sizeof(TTTOOLINFOA);
    ti.hwnd = hwnd;
    ti.hinst = GetModuleHandleA(((void*)0));
    ti.uFlags = TTF_SUBCLASS;
    ti.uId = 0x1234abcd;
    ti.lpszText = (LPSTR)"This is a test tooltip";
    ti.lParam = 0xdeadbeef;
    GetClientRect(hwnd, &ti.rect);
    ret = SendMessageA(hwndTip, TTM_ADDTOOLA, 0, (LPARAM)&ti);
    ok(ret, "Failed to add a tool.\n");


    SendMessageA(hwndTip, TTM_SETDELAYTIME, TTDT_INITIAL, MAKELPARAM(1, 0));

    flush_sequences(sequences, NUM_MSG_SEQUENCES);


    GetWindowRect(hwnd, &rect);
    SetCursorPos((rect.left + rect.right) / 2, (rect.top + rect.bottom) / 2);
    flush_events(200);

    ok_sequence(sequences, PARENT_SEQ_INDEX, ttn_show_parent_seq, "TTN_SHOW parent seq", FALSE);

    DestroyWindow(hwndTip);
    DestroyWindow(hwnd);
}
