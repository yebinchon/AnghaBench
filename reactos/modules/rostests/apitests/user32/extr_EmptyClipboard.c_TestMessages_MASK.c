#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ClipTestProc ; 
 int /*<<< orphan*/  ClipThread ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CritSect ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  EmptyClipboard_chain ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  empty_chain ; 
 int /*<<< orphan*/ * hWnd1 ; 
 int /*<<< orphan*/ * hWnd2 ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

void FUNC14()
{
    HANDLE hThread;
    DWORD dwThread;
    BOOL ret;
    MSG msg;

    /* Initialize the test */
    FUNC9(&CritSect);

    FUNC12(ClipTestProc, L"clipstest");

    hWnd2 = NULL;
    hWnd1 = FUNC4(L"clipstest", L"clipstest", WS_OVERLAPPEDWINDOW,
                        20, 20, 300, 300, NULL, NULL, 0, NULL);
    FUNC13 (hWnd1 != NULL, "CreateWindowW failed\n");

    FUNC5();

    /* Get ownership of the clipboard and record the messages we get */
    ret = FUNC10(hWnd1);
    FUNC13 (ret, "OpenClipboard failed\n");

    ret = FUNC6();
    FUNC13 (ret, "EmptyClipboard failed\n");

    ret = FUNC1();
    FUNC13 (ret, "CloseClipboard failed\n");

    /* Record posted messages */
    FUNC7();
    FUNC0(empty_chain);

    /* Create the child thread and record messages till we get the WM_QUIT */
    hThread = FUNC3(NULL, 0, ClipThread, NULL, 0, &dwThread);

    while (FUNC8(&msg, 0, 0 ,0))
        FUNC11(&msg);

    FUNC0(EmptyClipboard_chain);

    FUNC2(hThread);
}