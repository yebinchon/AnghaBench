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
typedef  int SHORT ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  KEYEVENTF_KEYUP ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_KEYFIRST ; 
 int /*<<< orphan*/  WM_KEYLAST ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  WmKeyPressNormal ; 
 int /*<<< orphan*/  WmKeyPressRepeat ; 
 int /*<<< orphan*/  WmKeyReleaseNormal ; 
 int /*<<< orphan*/  WmKeyReleaseOnly ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
    HWND test_window;
    SHORT key_state;
    BYTE keyboard_state[256];
    MSG msg;

    test_window = FUNC0(0, "TestWindowClass", NULL, WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, NULL);

    FUNC8();
    FUNC9();

    /* keyup without a keydown */
    FUNC10(0x41, 0, KEYEVENTF_KEYUP, 0);
    while (FUNC6(&msg, NULL, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        FUNC2(&msg);
    FUNC12(WmKeyReleaseOnly, "key release only", TRUE);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    key_state = FUNC4(0x41);
    FUNC11((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    /* keydown */
    FUNC10(0x41, 0, 0, 0);
    while (FUNC6(&msg, NULL, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        FUNC2(&msg);
    FUNC12(WmKeyPressNormal, "key press only", FALSE);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    key_state = FUNC4(0x41);
    FUNC11((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    /* keydown repeat */
    FUNC10(0x41, 0, 0, 0);
    while (FUNC6(&msg, NULL, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        FUNC2(&msg);
    FUNC12(WmKeyPressRepeat, "key press repeat", FALSE);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    key_state = FUNC4(0x41);
    FUNC11((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    /* keyup */
    FUNC10(0x41, 0, KEYEVENTF_KEYUP, 0);
    while (FUNC6(&msg, NULL, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        FUNC2(&msg);
    FUNC12(WmKeyReleaseNormal, "key release repeat", FALSE);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    key_state = FUNC4(0x41);
    FUNC11((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    /* set the key state in this thread */
    FUNC5(keyboard_state);
    keyboard_state[0x41] = 0x80;
    FUNC7(keyboard_state);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    /* keydown */
    FUNC10(0x41, 0, 0, 0);
    while (FUNC6(&msg, NULL, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        FUNC2(&msg);
    FUNC12(WmKeyPressRepeat, "key press after setkeyboardstate", TRUE);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    key_state = FUNC4(0x41);
    FUNC11((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    /* clear the key state in this thread */
    FUNC5(keyboard_state);
    keyboard_state[0x41] = 0;
    FUNC7(keyboard_state);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    /* keyup */
    FUNC10(0x41, 0, KEYEVENTF_KEYUP, 0);
    while (FUNC6(&msg, NULL, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        FUNC2(&msg);
    FUNC12(WmKeyReleaseOnly, "key release after setkeyboardstate", TRUE);

    key_state = FUNC3(0x41);
    FUNC11((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    key_state = FUNC4(0x41);
    FUNC11((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    FUNC1(test_window);
    FUNC9();
}