
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wnd_event {scalar_t__ hwnd; int * start_event; int * stop_event; int * grand_child; } ;
typedef int buf ;
typedef int * WNDPROC ;
typedef int ULONG_PTR ;
struct TYPE_4__ {scalar_t__ hwnd; int wParam; scalar_t__ lParam; int message; } ;
typedef TYPE_1__ MSG ;
typedef scalar_t__ LPARAM ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CallWindowProcA (int *,scalar_t__,int ,int,scalar_t__) ;
 int CloseHandle (int *) ;
 void* CreateEventA (int *,int ,int ,int *) ;
 void* CreateEventW (int *,int ,int ,int *) ;
 int * CreateThread (int *,int ,int ,struct wnd_event*,int ,int *) ;
 scalar_t__ CreateWindowExA (int ,char*,char*,int,int,int,int,int,int ,int ,int ,int *) ;
 int DeleteFileA (char*) ;
 int DestroyWindow (scalar_t__) ;
 int DispatchMessageA (TYPE_1__*) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_MESSAGE_SYNC_ONLY ;
 int FALSE ;
 int GWLP_WNDPROC ;
 int GetLastError () ;
 scalar_t__ GetWindowLongPtrA (scalar_t__,int ) ;
 int INFINITE ;
 int IsWindow (scalar_t__) ;
 int MsgWaitForMultipleObjects (int,int **,int ,int,int ) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (TYPE_1__*,int ,int ,int ,int ) ;
 int PostMessageA (scalar_t__,scalar_t__,int ,scalar_t__) ;
 int QS_SENDMESSAGE ;
 int SendMessageA (scalar_t__,scalar_t__,int ,int ) ;
 int SetEvent (int *) ;
 int SetLastError (int) ;
 int TRUE ;
 int WAIT_OBJECT_0 ;
 int WM_GETTEXT ;
 scalar_t__ WM_QUIT ;
 int WM_TIMER ;
 scalar_t__ WM_USER ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int WaitForSingleObject (int *,int) ;
 int WmExitThreadSeq ;
 scalar_t__ broken (int) ;
 int create_child_thread ;
 int create_manifest_file (char*,int ) ;
 int flush_events () ;
 int flush_sequence () ;
 int log_all_parent_messages ;
 int lstrcmpA (char*,char*) ;
 int lstrlenA (char*) ;
 int manifest_dep ;
 int manifest_main ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,char*,int ) ;
 int pActivateActCtx (int *,int *) ;
 int pDeactivateActCtx (int ,int ) ;
 int pGetCurrentActCtx (int **) ;
 int pReleaseActCtx (int *) ;
 int * test_create (char*) ;
 int thread_proc ;
 int win_skip (char*) ;

__attribute__((used)) static void test_interthread_messages(void)
{
    HANDLE hThread, context, handle, event;
    ULONG_PTR cookie;
    DWORD tid;
    WNDPROC proc;
    MSG msg;
    char buf[256];
    int len, expected_len;
    struct wnd_event wnd_event;
    BOOL ret;

    wnd_event.start_event = CreateEventW(((void*)0), 0, 0, ((void*)0));
    if (!wnd_event.start_event)
    {
        win_skip("skipping interthread message test under win9x\n");
        return;
    }

    hThread = CreateThread(((void*)0), 0, thread_proc, &wnd_event, 0, &tid);
    ok(hThread != ((void*)0), "CreateThread failed, error %d\n", GetLastError());

    ok(WaitForSingleObject(wnd_event.start_event, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");

    CloseHandle(wnd_event.start_event);

    SetLastError(0xdeadbeef);
    ok(!DestroyWindow(wnd_event.hwnd), "DestroyWindow succeeded\n");
    ok(GetLastError() == ERROR_ACCESS_DENIED || GetLastError() == 0xdeadbeef,
       "wrong error code %d\n", GetLastError());

    proc = (WNDPROC)GetWindowLongPtrA(wnd_event.hwnd, GWLP_WNDPROC);
    ok(proc != ((void*)0), "GetWindowLongPtrA(GWLP_WNDPROC) error %d\n", GetLastError());

    expected_len = lstrlenA("window caption text");
    memset(buf, 0, sizeof(buf));
    SetLastError(0xdeadbeef);
    len = CallWindowProcA(proc, wnd_event.hwnd, WM_GETTEXT, sizeof(buf), (LPARAM)buf);
    ok(len == expected_len, "CallWindowProcA(WM_GETTEXT) error %d, len %d, expected len %d\n", GetLastError(), len, expected_len);
    ok(!lstrcmpA(buf, "window caption text"), "window text mismatch\n");

    msg.hwnd = wnd_event.hwnd;
    msg.message = WM_GETTEXT;
    msg.wParam = sizeof(buf);
    msg.lParam = (LPARAM)buf;
    memset(buf, 0, sizeof(buf));
    SetLastError(0xdeadbeef);
    len = DispatchMessageA(&msg);
    ok((!len && GetLastError() == ERROR_MESSAGE_SYNC_ONLY) || broken(len),
       "DispatchMessageA(WM_GETTEXT) succeeded on another thread window: ret %d, error %d\n", len, GetLastError());


    msg.hwnd = wnd_event.hwnd;
    msg.message = WM_TIMER;
    msg.wParam = 0;
    msg.lParam = GetWindowLongPtrA(wnd_event.hwnd, GWLP_WNDPROC);
    SetLastError(0xdeadbeef);
    len = DispatchMessageA(&msg);
    ok(!len && GetLastError() == 0xdeadbeef,
       "DispatchMessageA(WM_TIMER) failed on another thread window: ret %d, error %d\n", len, GetLastError());

    ret = PostMessageA(wnd_event.hwnd, WM_QUIT, 0, 0);
    ok( ret, "PostMessageA(WM_QUIT) error %d\n", GetLastError());

    ok(WaitForSingleObject(hThread, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    CloseHandle(hThread);

    ok(!IsWindow(wnd_event.hwnd), "window should be destroyed on thread exit\n");

    wnd_event.hwnd = CreateWindowExA(0, "TestParentClass", "Test parent", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                              100, 100, 200, 200, 0, 0, 0, ((void*)0));
    ok (wnd_event.hwnd != 0, "Failed to create parent window\n");
    flush_events();
    flush_sequence();
    log_all_parent_messages++;
    wnd_event.start_event = CreateEventA( ((void*)0), TRUE, FALSE, ((void*)0) );
    wnd_event.stop_event = CreateEventA( ((void*)0), TRUE, FALSE, ((void*)0) );
    hThread = CreateThread( ((void*)0), 0, create_child_thread, &wnd_event, 0, &tid );
    for (;;)
    {
        ret = MsgWaitForMultipleObjects(1, &wnd_event.start_event, FALSE, 1000, QS_SENDMESSAGE);
        if (ret != 1) break;
        while (PeekMessageA(&msg, 0, 0, 0, PM_REMOVE)) DispatchMessageA(&msg);
    }
    ok( !ret, "MsgWaitForMultipleObjects failed %x\n", ret );

    SetEvent( wnd_event.stop_event );
    ret = WaitForSingleObject( hThread, 5000 );
    ok( !ret, "WaitForSingleObject failed %x\n", ret );
    CloseHandle( hThread );

    ret = WaitForSingleObject( wnd_event.grand_child, 5000 );
    ok( !ret, "WaitForSingleObject failed %x\n", ret );
    CloseHandle( wnd_event.grand_child );

    CloseHandle( wnd_event.start_event );
    CloseHandle( wnd_event.stop_event );
    flush_events();
    ok_sequence(WmExitThreadSeq, "destroy child on thread exit", FALSE);
    log_all_parent_messages--;
    DestroyWindow( wnd_event.hwnd );


    if (!pActivateActCtx)
    {
        win_skip("Activation contexts are not supported, skipping\n");
        return;
    }

    create_manifest_file("testdep1.manifest", manifest_dep);
    create_manifest_file("main.manifest", manifest_main);

    context = test_create("main.manifest");
    DeleteFileA("testdep1.manifest");
    DeleteFileA("main.manifest");

    handle = (void*)0xdeadbeef;
    ret = pGetCurrentActCtx(&handle);
    ok(ret, "GetCurrentActCtx failed: %u\n", GetLastError());
    ok(handle == 0, "active context %p\n", handle);

    wnd_event.start_event = CreateEventW(((void*)0), 0, 0, ((void*)0));
    hThread = CreateThread(((void*)0), 0, thread_proc, &wnd_event, 0, &tid);
    ok(hThread != ((void*)0), "CreateThread failed, error %d\n", GetLastError());
    ok(WaitForSingleObject(wnd_event.start_event, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    CloseHandle(wnd_event.start_event);


    ret = pActivateActCtx(context, &cookie);
    ok(ret, "activation failed: %u\n", GetLastError());

    handle = 0;
    ret = pGetCurrentActCtx(&handle);
    ok(ret, "GetCurrentActCtx failed: %u\n", GetLastError());
    ok(handle != 0, "active context %p\n", handle);
    pReleaseActCtx(handle);


    ret = SendMessageA(wnd_event.hwnd, WM_USER+10, 0, 0);
    ok(ret, "thread window returned %d\n", ret);

    event = CreateEventW(((void*)0), 0, 0, ((void*)0));
    ret = PostMessageA(wnd_event.hwnd, WM_USER+10, 0, (LPARAM)event);
    ok(ret, "thread window returned %d\n", ret);
    ok(WaitForSingleObject(event, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    CloseHandle(event);

    ret = PostMessageA(wnd_event.hwnd, WM_QUIT, 0, 0);
    ok(ret, "PostMessageA(WM_QUIT) error %d\n", GetLastError());

    ok(WaitForSingleObject(hThread, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    CloseHandle(hThread);

    ret = pDeactivateActCtx(0, cookie);
    ok(ret, "DeactivateActCtx failed: %u\n", GetLastError());
    pReleaseActCtx(context);
}
