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
struct TYPE_4__ {scalar_t__ hwnd; } ;
typedef  TYPE_1__ MSG ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WM_NOTIFY ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  WmNotifySeq ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(void)
{
    HWND hwnd;
    BOOL ret;
    MSG msg;

    hwnd = FUNC0(0, "TestWindowClass", NULL, WS_OVERLAPPEDWINDOW,
                           CW_USEDEFAULT, CW_USEDEFAULT, 300, 300, 0, NULL, NULL, 0);
    FUNC16(hwnd != 0, "Failed to create window\n");
    FUNC14();
    FUNC15();

    ret = FUNC12(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    FUNC16(ret == TRUE, "SendNotifyMessageA failed with error %u\n", FUNC4());
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = FUNC13(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    FUNC16(ret == TRUE, "SendNotifyMessageW failed with error %u\n", FUNC4());
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = FUNC10(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef, NULL, 0);
    FUNC16(ret == TRUE, "SendMessageCallbackA failed with error %u\n", FUNC4());
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = FUNC11(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef, NULL, 0);
    FUNC16(ret == TRUE, "SendMessageCallbackW failed with error %u\n", FUNC4());
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = FUNC6(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    FUNC16(ret == TRUE, "PostMessageA failed with error %u\n", FUNC4());
    FUNC14();
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = FUNC7(hwnd, WM_NOTIFY, 0x1234, 0xdeadbeef);
    FUNC16(ret == TRUE, "PostMessageW failed with error %u\n", FUNC4());
    FUNC14();
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = FUNC8(FUNC3(), WM_NOTIFY, 0x1234, 0xdeadbeef);
    FUNC16(ret == TRUE, "PostThreadMessageA failed with error %u\n", FUNC4());
    while (FUNC5(&msg, 0, 0, 0, PM_REMOVE))
    {
        msg.hwnd = hwnd;
        FUNC2(&msg);
    }
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    ret = FUNC9(FUNC3(), WM_NOTIFY, 0x1234, 0xdeadbeef);
    FUNC16(ret == TRUE, "PostThreadMessageW failed with error %u\n", FUNC4());
    while (FUNC5(&msg, 0, 0, 0, PM_REMOVE))
    {
        msg.hwnd = hwnd;
        FUNC2(&msg);
    }
    FUNC17(WmNotifySeq, "WmNotifySeq", FALSE);

    FUNC1(hwnd);
}