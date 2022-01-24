#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct recvd_message {int hwnd; int message; int flags; int wParam; int lParam; char* descr; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_6__ {int message; int wParam; int lParam; int hwnd; } ;
typedef  TYPE_1__ MSG ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PM_NOREMOVE ; 
 int /*<<< orphan*/  PM_QS_SENDMESSAGE ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int WM_QUIT ; 
 int WM_USER ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  WmQuitDialogSeq ; 
 int /*<<< orphan*/  WmStopQuitSeq ; 
 int /*<<< orphan*/  FUNC10 (struct recvd_message*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int lparam ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int posted ; 
 int /*<<< orphan*/  wm_quit_dlg_proc ; 
 int wparam ; 

__attribute__((used)) static void FUNC16(void)
{
    MSG msg;
    BOOL ret;

    /* test using PostQuitMessage */
    FUNC11();
    FUNC8(0xbeef);

    msg.message = 0;
    ret = FUNC7(&msg, 0, 0, 0, PM_QS_SENDMESSAGE);
    FUNC14(!ret, "got %x message\n", msg.message);

    ret = FUNC7(&msg, NULL, 0, 0, PM_NOREMOVE);
    FUNC14(ret, "PeekMessage failed with error %d\n", FUNC4());
    FUNC14(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    FUNC14(msg.wParam == 0xbeef, "wParam was 0x%lx instead of 0xbeef\n", msg.wParam);

    ret = FUNC9(FUNC3(), WM_USER, 0, 0);
    FUNC14(ret, "PostMessage failed with error %d\n", FUNC4());

    ret = FUNC5(&msg, NULL, 0, 0);
    FUNC14(ret > 0, "GetMessage failed with error %d\n", FUNC4());
    FUNC14(msg.message == WM_USER, "Received message 0x%04x instead of WM_USER\n", msg.message);

    /* note: WM_QUIT message received after WM_USER message */
    ret = FUNC5(&msg, NULL, 0, 0);
    FUNC14(!ret, "GetMessage return %d with error %d instead of FALSE\n", ret, FUNC4());
    FUNC14(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    FUNC14(msg.wParam == 0xbeef, "wParam was 0x%lx instead of 0xbeef\n", msg.wParam);

    ret = FUNC7(&msg, NULL, 0, 0, PM_REMOVE);
    FUNC14( !ret || msg.message != WM_QUIT, "Received WM_QUIT again\n" );

    /* now test with PostThreadMessage - different behaviour! */
    FUNC9(FUNC3(), WM_QUIT, 0xdead, 0);

    ret = FUNC7(&msg, NULL, 0, 0, PM_NOREMOVE);
    FUNC14(ret, "PeekMessage failed with error %d\n", FUNC4());
    FUNC14(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    FUNC14(msg.wParam == 0xdead, "wParam was 0x%lx instead of 0xdead\n", msg.wParam);

    ret = FUNC9(FUNC3(), WM_USER, 0, 0);
    FUNC14(ret, "PostMessage failed with error %d\n", FUNC4());

    /* note: we receive the WM_QUIT message first this time */
    ret = FUNC5(&msg, NULL, 0, 0);
    FUNC14(!ret, "GetMessage return %d with error %d instead of FALSE\n", ret, FUNC4());
    FUNC14(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    FUNC14(msg.wParam == 0xdead, "wParam was 0x%lx instead of 0xdead\n", msg.wParam);

    ret = FUNC5(&msg, NULL, 0, 0);
    FUNC14(ret > 0, "GetMessage failed with error %d\n", FUNC4());
    FUNC14(msg.message == WM_USER, "Received message 0x%04x instead of WM_USER\n", msg.message);

    FUNC11();
    FUNC12();
    ret = FUNC1(FUNC6(NULL), "TEST_EMPTY_DIALOG", 0, wm_quit_dlg_proc, 0);
    FUNC14(ret == 1, "expected 1, got %d\n", ret);
    FUNC15(WmQuitDialogSeq, "WmQuitDialogSeq", FALSE);
    FUNC13(&msg, 0xab, sizeof(msg));
    ret = FUNC7(&msg, NULL, 0, 0, PM_REMOVE);
    FUNC14(ret, "PeekMessage failed\n");
    FUNC14(msg.message == WM_QUIT, "Received message 0x%04x instead of WM_QUIT\n", msg.message);
    FUNC14(msg.wParam == 0x1234, "wParam was 0x%lx instead of 0x1234\n", msg.wParam);
    FUNC14(msg.lParam == 0, "lParam was 0x%lx instead of 0\n", msg.lParam);

    /* Check what happens to a WM_QUIT message posted to a window that gets
     * destroyed.
     */
    FUNC0(0, "StopQuitClass", "Stop Quit Test", WS_OVERLAPPEDWINDOW,
                    0, 0, 100, 100, NULL, NULL, NULL, NULL);
    FUNC12();
    while (FUNC7(&msg, 0, 0, 0, PM_REMOVE))
    {
        struct recvd_message rmsg;
        rmsg.hwnd = msg.hwnd;
        rmsg.message = msg.message;
        rmsg.flags = posted|wparam|lparam;
        rmsg.wParam = msg.wParam;
        rmsg.lParam = msg.lParam;
        rmsg.descr = "stop/quit";
        if (msg.message == WM_QUIT)
            /* The hwnd can only be checked here */
            FUNC14(!msg.hwnd, "The WM_QUIT hwnd was %p instead of NULL\n", msg.hwnd);
        FUNC10(&rmsg);
        FUNC2(&msg);
    }
    FUNC15(WmStopQuitSeq, "WmStopQuitSeq", FALSE);
}