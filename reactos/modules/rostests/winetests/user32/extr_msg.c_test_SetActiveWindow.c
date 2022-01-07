
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;


 scalar_t__ CreateWindowExA (int ,char*,char*,int,int,int,int,int,scalar_t__,int ,int ,int *) ;
 int DestroyWindow (scalar_t__) ;
 int FALSE ;
 int SW_HIDE ;
 scalar_t__ SetActiveWindow (scalar_t__) ;
 int SetActiveWindowSeq0 ;
 int SetActiveWindowSeq1 ;
 int SetActiveWindowSeq2 ;
 int SetActiveWindowSeq3 ;
 int SetActiveWindowSeq4 ;
 int SetForegroundWindow (scalar_t__) ;
 int ShowWindow (scalar_t__,int ) ;
 int TRUE ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_POPUP ;
 int WS_VISIBLE ;
 int flush_sequence () ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,char*,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_SetActiveWindow(void)
{
    HWND hwnd, popup, ret;

    hwnd = CreateWindowExA(0, "TestWindowClass", "Test SetActiveWindow",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, ((void*)0));

    popup = CreateWindowExA(0, "TestWindowClass", "Test SetActiveWindow",
                           WS_OVERLAPPEDWINDOW | WS_VISIBLE | WS_POPUP,
                           100, 100, 200, 200, hwnd, 0, 0, ((void*)0));

    ok(hwnd != 0, "Failed to create overlapped window\n");
    ok(popup != 0, "Failed to create popup window\n");
    SetForegroundWindow( popup );
    flush_sequence();

    trace("SetActiveWindow(0)\n");
    ret = SetActiveWindow(0);
    ok( ret == popup, "Failed to SetActiveWindow(0)\n");
    ok_sequence(SetActiveWindowSeq0, "SetActiveWindow(0)", FALSE);
    flush_sequence();

    trace("SetActiveWindow(hwnd), hwnd visible\n");
    ret = SetActiveWindow(hwnd);
    if (ret == hwnd) ok_sequence(SetActiveWindowSeq1, "SetActiveWindow(hwnd), hwnd visible", TRUE);
    flush_sequence();

    trace("SetActiveWindow(popup), hwnd visible, popup visible\n");
    ret = SetActiveWindow(popup);
    ok( ret == hwnd, "Failed to SetActiveWindow(popup), popup visible\n");
    ok_sequence(SetActiveWindowSeq2, "SetActiveWindow(popup), hwnd visible, popup visible", FALSE);
    flush_sequence();

    ShowWindow(hwnd, SW_HIDE);
    ShowWindow(popup, SW_HIDE);
    flush_sequence();

    trace("SetActiveWindow(hwnd), hwnd not visible\n");
    ret = SetActiveWindow(hwnd);
    ok( ret == ((void*)0), "SetActiveWindow(hwnd), hwnd not visible, previous is %p\n", ret );
    ok_sequence(SetActiveWindowSeq3, "SetActiveWindow(hwnd), hwnd not visible", TRUE);
    flush_sequence();

    trace("SetActiveWindow(popup), hwnd not visible, popup not visible\n");
    ret = SetActiveWindow(popup);
    ok( ret == hwnd, "Failed to SetActiveWindow(popup)\n");
    ok_sequence(SetActiveWindowSeq4, "SetActiveWindow(popup), hwnd not visible, popup not visible", TRUE);
    flush_sequence();

    trace("done\n");

    DestroyWindow(hwnd);
}
