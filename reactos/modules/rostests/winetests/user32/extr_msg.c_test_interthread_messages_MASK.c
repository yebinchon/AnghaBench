#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wnd_event {scalar_t__ hwnd; int /*<<< orphan*/ * start_event; int /*<<< orphan*/ * stop_event; int /*<<< orphan*/ * grand_child; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/ * WNDPROC ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_4__ {scalar_t__ hwnd; int wParam; scalar_t__ lParam; int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ MSG ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wnd_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (TYPE_1__*) ; 
 int ERROR_ACCESS_DENIED ; 
 int ERROR_MESSAGE_SYNC_ONLY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWLP_WNDPROC ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int INFINITE ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  QS_SENDMESSAGE ; 
 int FUNC15 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int WAIT_OBJECT_0 ; 
 int /*<<< orphan*/  WM_GETTEXT ; 
 scalar_t__ WM_QUIT ; 
 int /*<<< orphan*/  WM_TIMER ; 
 scalar_t__ WM_USER ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  WmExitThreadSeq ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  create_child_thread ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  log_all_parent_messages ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int FUNC24 (char*) ; 
 int /*<<< orphan*/  manifest_dep ; 
 int /*<<< orphan*/  manifest_main ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC32 (char*) ; 
 int /*<<< orphan*/  thread_proc ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 

__attribute__((used)) static void FUNC34(void)
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

    wnd_event.start_event = FUNC3(NULL, 0, 0, NULL);
    if (!wnd_event.start_event)
    {
        FUNC33("skipping interthread message test under win9x\n");
        return;
    }

    hThread = FUNC4(NULL, 0, thread_proc, &wnd_event, 0, &tid);
    FUNC26(hThread != NULL, "CreateThread failed, error %d\n", FUNC9());

    FUNC26(FUNC18(wnd_event.start_event, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");

    FUNC1(wnd_event.start_event);

    FUNC17(0xdeadbeef);
    FUNC26(!FUNC7(wnd_event.hwnd), "DestroyWindow succeeded\n");
    FUNC26(FUNC9() == ERROR_ACCESS_DENIED || FUNC9() == 0xdeadbeef,
       "wrong error code %d\n", FUNC9());

    proc = (WNDPROC)FUNC10(wnd_event.hwnd, GWLP_WNDPROC);
    FUNC26(proc != NULL, "GetWindowLongPtrA(GWLP_WNDPROC) error %d\n", FUNC9());

    expected_len = FUNC24("window caption text");
    FUNC25(buf, 0, sizeof(buf));
    FUNC17(0xdeadbeef);
    len = FUNC0(proc, wnd_event.hwnd, WM_GETTEXT, sizeof(buf), (LPARAM)buf);
    FUNC26(len == expected_len, "CallWindowProcA(WM_GETTEXT) error %d, len %d, expected len %d\n", FUNC9(), len, expected_len);
    FUNC26(!FUNC23(buf, "window caption text"), "window text mismatch\n");

    msg.hwnd = wnd_event.hwnd;
    msg.message = WM_GETTEXT;
    msg.wParam = sizeof(buf);
    msg.lParam = (LPARAM)buf;
    FUNC25(buf, 0, sizeof(buf));
    FUNC17(0xdeadbeef);
    len = FUNC8(&msg);
    FUNC26((!len && FUNC9() == ERROR_MESSAGE_SYNC_ONLY) || FUNC19(len), /* nt4 */
       "DispatchMessageA(WM_GETTEXT) succeeded on another thread window: ret %d, error %d\n", len, FUNC9());

    /* the following test causes an exception in user.exe under win9x */
    msg.hwnd = wnd_event.hwnd;
    msg.message = WM_TIMER;
    msg.wParam = 0;
    msg.lParam = FUNC10(wnd_event.hwnd, GWLP_WNDPROC);
    FUNC17(0xdeadbeef);
    len = FUNC8(&msg);
    FUNC26(!len && FUNC9() == 0xdeadbeef,
       "DispatchMessageA(WM_TIMER) failed on another thread window: ret %d, error %d\n", len, FUNC9());

    ret = FUNC14(wnd_event.hwnd, WM_QUIT, 0, 0);
    FUNC26( ret, "PostMessageA(WM_QUIT) error %d\n", FUNC9());

    FUNC26(FUNC18(hThread, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    FUNC1(hThread);

    FUNC26(!FUNC11(wnd_event.hwnd), "window should be destroyed on thread exit\n");

    wnd_event.hwnd = FUNC5(0, "TestParentClass", "Test parent", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                              100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC26 (wnd_event.hwnd != 0, "Failed to create parent window\n");
    FUNC21();
    FUNC22();
    log_all_parent_messages++;
    wnd_event.start_event = FUNC2( NULL, TRUE, FALSE, NULL );
    wnd_event.stop_event = FUNC2( NULL, TRUE, FALSE, NULL );
    hThread = FUNC4( NULL, 0, create_child_thread, &wnd_event, 0, &tid );
    for (;;)
    {
        ret = FUNC12(1, &wnd_event.start_event, FALSE, 1000, QS_SENDMESSAGE);
        if (ret != 1) break;
        while (FUNC13(&msg, 0, 0, 0, PM_REMOVE)) FUNC8(&msg);
    }
    FUNC26( !ret, "MsgWaitForMultipleObjects failed %x\n", ret );
    /* now wait for the thread without processing messages; this shouldn't deadlock */
    FUNC16( wnd_event.stop_event );
    ret = FUNC18( hThread, 5000 );
    FUNC26( !ret, "WaitForSingleObject failed %x\n", ret );
    FUNC1( hThread );

    ret = FUNC18( wnd_event.grand_child, 5000 );
    FUNC26( !ret, "WaitForSingleObject failed %x\n", ret );
    FUNC1( wnd_event.grand_child );

    FUNC1( wnd_event.start_event );
    FUNC1( wnd_event.stop_event );
    FUNC21();
    FUNC27(WmExitThreadSeq, "destroy child on thread exit", FALSE);
    log_all_parent_messages--;
    FUNC7( wnd_event.hwnd );

    /* activation context tests */
    if (!&pActivateActCtx)
    {
        FUNC33("Activation contexts are not supported, skipping\n");
        return;
    }

    FUNC20("testdep1.manifest", manifest_dep);
    FUNC20("main.manifest", manifest_main);

    context = FUNC32("main.manifest");
    FUNC6("testdep1.manifest");
    FUNC6("main.manifest");

    handle = (void*)0xdeadbeef;
    ret = FUNC30(&handle);
    FUNC26(ret, "GetCurrentActCtx failed: %u\n", FUNC9());
    FUNC26(handle == 0, "active context %p\n", handle);

    wnd_event.start_event = FUNC3(NULL, 0, 0, NULL);
    hThread = FUNC4(NULL, 0, thread_proc, &wnd_event, 0, &tid);
    FUNC26(hThread != NULL, "CreateThread failed, error %d\n", FUNC9());
    FUNC26(FUNC18(wnd_event.start_event, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    FUNC1(wnd_event.start_event);

    /* context is activated after thread creation, so it doesn't inherit it by default */
    ret = FUNC28(context, &cookie);
    FUNC26(ret, "activation failed: %u\n", FUNC9());

    handle = 0;
    ret = FUNC30(&handle);
    FUNC26(ret, "GetCurrentActCtx failed: %u\n", FUNC9());
    FUNC26(handle != 0, "active context %p\n", handle);
    FUNC31(handle);

    /* destination window will test for active context */
    ret = FUNC15(wnd_event.hwnd, WM_USER+10, 0, 0);
    FUNC26(ret, "thread window returned %d\n", ret);

    event = FUNC3(NULL, 0, 0, NULL);
    ret = FUNC14(wnd_event.hwnd, WM_USER+10, 0, (LPARAM)event);
    FUNC26(ret, "thread window returned %d\n", ret);
    FUNC26(FUNC18(event, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    FUNC1(event);

    ret = FUNC14(wnd_event.hwnd, WM_QUIT, 0, 0);
    FUNC26(ret, "PostMessageA(WM_QUIT) error %d\n", FUNC9());

    FUNC26(FUNC18(hThread, INFINITE) == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
    FUNC1(hThread);

    ret = FUNC29(0, cookie);
    FUNC26(ret, "DeactivateActCtx failed: %u\n", FUNC9());
    FUNC31(context);
}