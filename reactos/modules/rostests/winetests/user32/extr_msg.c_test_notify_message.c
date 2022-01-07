
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hwnd; } ;
typedef TYPE_1__ MSG ;
typedef scalar_t__ HWND ;
typedef scalar_t__ BOOL ;


 int CW_USEDEFAULT ;
 scalar_t__ CreateWindowExA (int ,char*,int *,int ,int ,int ,int,int,int ,int *,int *,int ) ;
 int DestroyWindow (scalar_t__) ;
 int DispatchMessageA (TYPE_1__*) ;
 int FALSE ;
 int GetCurrentThreadId () ;
 int GetLastError () ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (TYPE_1__*,int ,int ,int ,int ) ;
 scalar_t__ PostMessageA (scalar_t__,int ,int,int) ;
 scalar_t__ PostMessageW (scalar_t__,int ,int,int) ;
 scalar_t__ PostThreadMessageA (int ,int ,int,int) ;
 scalar_t__ PostThreadMessageW (int ,int ,int,int) ;
 scalar_t__ SendMessageCallbackA (scalar_t__,int ,int,int,int *,int ) ;
 scalar_t__ SendMessageCallbackW (scalar_t__,int ,int,int,int *,int ) ;
 scalar_t__ SendNotifyMessageA (scalar_t__,int ,int,int) ;
 scalar_t__ SendNotifyMessageW (scalar_t__,int ,int,int) ;
 scalar_t__ TRUE ;
 int WM_NOTIFY ;
 int WS_OVERLAPPEDWINDOW ;
 int WmNotifySeq ;
 int flush_events () ;
 int flush_sequence () ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,char*,int ) ;

__attribute__((used)) static void test_notify_message(void)
{
    HWND hwnd;
    BOOL ret;
    MSG msg;

    hwnd = CreateWindowExA(0, "TestWindowClass", ((void*)0), WS_OVERLAPPEDWINDOW,
                           CW_USEDEFAULT, CW_USEDEFAULT, 300, 300, 0, ((void*)0), ((void*)0), 0);
    ok(hwnd != 0, "Failed to create window\n");
    flush_events();
    flush_sequence();

    ret = SendNotifyMessageA(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    ok(ret == TRUE, "SendNotifyMessageA failed with error %u\n", GetLastError());
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = SendNotifyMessageW(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    ok(ret == TRUE, "SendNotifyMessageW failed with error %u\n", GetLastError());
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = SendMessageCallbackA(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef, ((void*)0), 0);
    ok(ret == TRUE, "SendMessageCallbackA failed with error %u\n", GetLastError());
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = SendMessageCallbackW(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef, ((void*)0), 0);
    ok(ret == TRUE, "SendMessageCallbackW failed with error %u\n", GetLastError());
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = PostMessageA(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    ok(ret == TRUE, "PostMessageA failed with error %u\n", GetLastError());
    flush_events();
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = PostMessageW(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    ok(ret == TRUE, "PostMessageW failed with error %u\n", GetLastError());
    flush_events();
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = PostThreadMessageA(GetCurrentThreadId(), WM_NOTIFY, 0x1234, 0xdeadbeef);
    ok(ret == TRUE, "PostThreadMessageA failed with error %u\n", GetLastError());
    while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE))
    {
        msg.hwnd = hwnd;
        DispatchMessageA(&msg);
    }
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = PostThreadMessageW(GetCurrentThreadId(), WM_NOTIFY, 0x1234, 0xdeadbeef);
    ok(ret == TRUE, "PostThreadMessageW failed with error %u\n", GetLastError());
    while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE))
    {
        msg.hwnd = hwnd;
        DispatchMessageA(&msg);
    }
    ok_sequence(WmNotifySeq, "WmNotifySeq", FALSE);

    DestroyWindow(hwnd);
}
