
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WNDPROC ;
struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef int MSG ;
typedef int LONG_PTR ;
typedef int * HWND ;
typedef int HMENU ;


 int COMBINED_SEQ_INDEX ;
 int * CreateWindowA (char*,char*,int ,int ,int ,int,int,int *,int *,int ,int *) ;
 int * CreateWindowExA (int ,int ,char*,int,int ,int ,int,int,int *,int ,int ,int *) ;
 int DestroyWindow (int *) ;
 int DispatchMessageA (int *) ;
 int GWLP_USERDATA ;
 int GWLP_WNDPROC ;
 int GetCursorPos (TYPE_1__*) ;
 int GetModuleHandleA (int *) ;
 int HWND_TOPMOST ;
 int NUM_MSG_SEQUENCES ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int ,int ,int ,int ) ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SW_SHOW ;
 int SetCursorPos (int,int) ;
 int SetFocus (int *) ;
 scalar_t__ SetWindowLongPtrA (int *,int ,int ) ;
 int SetWindowPos (int *,int ,int ,int ,int ,int ,int) ;
 int ShowWindow (int *,int ) ;
 int TRUE ;
 int WC_EDITA ;
 int WS_CHILD ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 scalar_t__ edit_subclass_proc ;
 int flush_sequences (int ,int ) ;
 int killfocus_combined_seq ;
 int ok (int ,char*) ;
 int ok_sequence (int ,int ,int ,char*,int ) ;
 int sequences ;
 int setfocus_combined_seq ;

__attribute__((used)) static void test_change_focus(void)
{
    HWND hwnd, parent_wnd;
    WNDPROC oldproc;
    MSG msg;
    POINT orig_pos;

    GetCursorPos(&orig_pos);

    parent_wnd = CreateWindowA("ParentWnd", "", WS_OVERLAPPEDWINDOW,
            0, 0, 200, 200, ((void*)0), ((void*)0), GetModuleHandleA(((void*)0)), ((void*)0));
    ok(parent_wnd != ((void*)0), "Failed to create control parent.\n");
    SetWindowPos(parent_wnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE|SWP_NOMOVE);
    ShowWindow(parent_wnd, SW_SHOW);

    hwnd = CreateWindowExA(0, WC_EDITA, "Test", WS_CHILD | WS_VISIBLE, 0, 0, 100, 100,
            parent_wnd, (HMENU)1, GetModuleHandleA(((void*)0)), ((void*)0));
    ok(hwnd != ((void*)0), "Failed to create Edit control.\n");

    oldproc = (WNDPROC)SetWindowLongPtrA(hwnd, GWLP_WNDPROC, (LONG_PTR)edit_subclass_proc);
    SetWindowLongPtrA(hwnd, GWLP_USERDATA, (LONG_PTR)oldproc);

    SetCursorPos(400, 400);

    SetFocus(parent_wnd);
    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    SetFocus(hwnd);
    while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE)) DispatchMessageA(&msg);
    ok_sequence(sequences, COMBINED_SEQ_INDEX, setfocus_combined_seq, "Set focus", TRUE);

    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    SetFocus(parent_wnd);
    while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE)) DispatchMessageA(&msg);
    ok_sequence(sequences, COMBINED_SEQ_INDEX, killfocus_combined_seq, "Kill focus", TRUE);

    SetCursorPos(orig_pos.x, orig_pos.y);

    DestroyWindow(hwnd);
}
