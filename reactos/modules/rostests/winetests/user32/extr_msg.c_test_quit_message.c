
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct recvd_message {int hwnd; int message; int flags; int wParam; int lParam; char* descr; } ;
typedef int msg ;
struct TYPE_6__ {int message; int wParam; int lParam; int hwnd; } ;
typedef TYPE_1__ MSG ;
typedef int BOOL ;


 int CreateWindowExA (int ,char*,char*,int ,int ,int ,int,int,int *,int *,int *,int *) ;
 int DialogBoxParamA (int ,char*,int ,int ,int ) ;
 int DispatchMessageA (TYPE_1__*) ;
 int FALSE ;
 int GetCurrentThreadId () ;
 int GetLastError () ;
 int GetMessageA (TYPE_1__*,int *,int ,int ) ;
 int GetModuleHandleA (int *) ;
 int PM_NOREMOVE ;
 int PM_QS_SENDMESSAGE ;
 int PM_REMOVE ;
 int PeekMessageA (TYPE_1__*,int *,int ,int ,int ) ;
 int PostQuitMessage (int) ;
 int PostThreadMessageA (int ,int,int,int ) ;
 int WM_QUIT ;
 int WM_USER ;
 int WS_OVERLAPPEDWINDOW ;
 int WmQuitDialogSeq ;
 int WmStopQuitSeq ;
 int add_message (struct recvd_message*) ;
 int flush_events () ;
 int flush_sequence () ;
 int lparam ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,char*,int ) ;
 int posted ;
 int wm_quit_dlg_proc ;
 int wparam ;

__attribute__((used)) static void test_quit_message(void)
{
    MSG msg;
    BOOL ret;


    flush_events();
    PostQuitMessage(0xbeef);

    msg.message = 0;
    ret = PeekMessageA(&msg, 0, 0, 0, PM_QS_SENDMESSAGE);
    ok(!ret, "got %x message\n", msg.message);

    ret = PeekMessageA(&msg, ((void*)0), 0, 0, PM_NOREMOVE);
    ok(ret, "PeekMessage failed with error %d\n", GetLastError());
    ok(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    ok(msg.wParam == 0xbeef, "wParam was 0x%lx instead of 0xbeef\n", msg.wParam);

    ret = PostThreadMessageA(GetCurrentThreadId(), WM_USER, 0, 0);
    ok(ret, "PostMessage failed with error %d\n", GetLastError());

    ret = GetMessageA(&msg, ((void*)0), 0, 0);
    ok(ret > 0, "GetMessage failed with error %d\n", GetLastError());
    ok(msg.message == WM_USER, "Received message 0x%04x instead of WM_USER\n", msg.message);


    ret = GetMessageA(&msg, ((void*)0), 0, 0);
    ok(!ret, "GetMessage return %d with error %d instead of FALSE\n", ret, GetLastError());
    ok(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    ok(msg.wParam == 0xbeef, "wParam was 0x%lx instead of 0xbeef\n", msg.wParam);

    ret = PeekMessageA(&msg, ((void*)0), 0, 0, PM_REMOVE);
    ok( !ret || msg.message != WM_QUIT, "Received WM_QUIT again\n" );


    PostThreadMessageA(GetCurrentThreadId(), WM_QUIT, 0xdead, 0);

    ret = PeekMessageA(&msg, ((void*)0), 0, 0, PM_NOREMOVE);
    ok(ret, "PeekMessage failed with error %d\n", GetLastError());
    ok(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    ok(msg.wParam == 0xdead, "wParam was 0x%lx instead of 0xdead\n", msg.wParam);

    ret = PostThreadMessageA(GetCurrentThreadId(), WM_USER, 0, 0);
    ok(ret, "PostMessage failed with error %d\n", GetLastError());


    ret = GetMessageA(&msg, ((void*)0), 0, 0);
    ok(!ret, "GetMessage return %d with error %d instead of FALSE\n", ret, GetLastError());
    ok(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    ok(msg.wParam == 0xdead, "wParam was 0x%lx instead of 0xdead\n", msg.wParam);

    ret = GetMessageA(&msg, ((void*)0), 0, 0);
    ok(ret > 0, "GetMessage failed with error %d\n", GetLastError());
    ok(msg.message == WM_USER, "Received message 0x%04x instead of WM_USER\n", msg.message);

    flush_events();
    flush_sequence();
    ret = DialogBoxParamA(GetModuleHandleA(((void*)0)), "TEST_EMPTY_DIALOG", 0, wm_quit_dlg_proc, 0);
    ok(ret == 1, "expected 1, got %d\n", ret);
    ok_sequence(WmQuitDialogSeq, "WmQuitDialogSeq", FALSE);
    memset(&msg, 0xab, sizeof(msg));
    ret = PeekMessageA(&msg, ((void*)0), 0, 0, PM_REMOVE);
    ok(ret, "PeekMessage failed\n");
    ok(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    ok(msg.wParam == 0x1234, "wParam was 0x%lx instead of 0x1234\n", msg.wParam);
    ok(msg.lParam == 0, "lParam was 0x%lx instead of 0\n", msg.lParam);




    CreateWindowExA(0, "StopQuitClass", "Stop Quit Test", WS_OVERLAPPEDWINDOW,
                    0, 0, 100, 100, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    flush_sequence();
    while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE))
    {
        struct recvd_message rmsg;
        rmsg.hwnd = msg.hwnd;
        rmsg.message = msg.message;
        rmsg.flags = posted|wparam|lparam;
        rmsg.wParam = msg.wParam;
        rmsg.lParam = msg.lParam;
        rmsg.descr = "stop/quit";
        if (msg.message == WM_QUIT)

            ok(!msg.hwnd, "The WM_QUIT hwnd was %p instead of NULL\n", msg.hwnd);
        add_message(&rmsg);
        DispatchMessageA(&msg);
    }
    ok_sequence(WmStopQuitSeq, "WmStopQuitSeq", FALSE);
}
