
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHORT ;
typedef int MSG ;
typedef int HWND ;
typedef int BYTE ;


 int CreateWindowExA (int ,char*,int *,int,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (int ) ;
 int DispatchMessageA (int *) ;
 int FALSE ;
 int GetAsyncKeyState (int) ;
 int GetKeyState (int) ;
 int GetKeyboardState (int*) ;
 int KEYEVENTF_KEYUP ;
 int PM_REMOVE ;
 scalar_t__ PeekMessageA (int *,int *,int ,int ,int ) ;
 int SetKeyboardState (int*) ;
 int TRUE ;
 int WM_KEYFIRST ;
 int WM_KEYLAST ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int WmKeyPressNormal ;
 int WmKeyPressRepeat ;
 int WmKeyReleaseNormal ;
 int WmKeyReleaseOnly ;
 int flush_events () ;
 int flush_sequence () ;
 int keybd_event (int,int ,int ,int ) ;
 int ok (int,char*,int) ;
 int ok_sequence (int ,char*,int ) ;

__attribute__((used)) static void test_keyflags(void)
{
    HWND test_window;
    SHORT key_state;
    BYTE keyboard_state[256];
    MSG msg;

    test_window = CreateWindowExA(0, "TestWindowClass", ((void*)0), WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                           100, 100, 200, 200, 0, 0, 0, ((void*)0));

    flush_events();
    flush_sequence();


    keybd_event(0x41, 0, KEYEVENTF_KEYUP, 0);
    while (PeekMessageA(&msg, ((void*)0), WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        DispatchMessageA(&msg);
    ok_sequence(WmKeyReleaseOnly, "key release only", TRUE);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    key_state = GetKeyState(0x41);
    ok((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);


    keybd_event(0x41, 0, 0, 0);
    while (PeekMessageA(&msg, ((void*)0), WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        DispatchMessageA(&msg);
    ok_sequence(WmKeyPressNormal, "key press only", FALSE);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    key_state = GetKeyState(0x41);
    ok((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);


    keybd_event(0x41, 0, 0, 0);
    while (PeekMessageA(&msg, ((void*)0), WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        DispatchMessageA(&msg);
    ok_sequence(WmKeyPressRepeat, "key press repeat", FALSE);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    key_state = GetKeyState(0x41);
    ok((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);


    keybd_event(0x41, 0, KEYEVENTF_KEYUP, 0);
    while (PeekMessageA(&msg, ((void*)0), WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        DispatchMessageA(&msg);
    ok_sequence(WmKeyReleaseNormal, "key release repeat", FALSE);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    key_state = GetKeyState(0x41);
    ok((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);


    GetKeyboardState(keyboard_state);
    keyboard_state[0x41] = 0x80;
    SetKeyboardState(keyboard_state);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);


    keybd_event(0x41, 0, 0, 0);
    while (PeekMessageA(&msg, ((void*)0), WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        DispatchMessageA(&msg);
    ok_sequence(WmKeyPressRepeat, "key press after setkeyboardstate", TRUE);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);

    key_state = GetKeyState(0x41);
    ok((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);


    GetKeyboardState(keyboard_state);
    keyboard_state[0x41] = 0;
    SetKeyboardState(keyboard_state);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0x8000, "unexpected key state %x\n", key_state);


    keybd_event(0x41, 0, KEYEVENTF_KEYUP, 0);
    while (PeekMessageA(&msg, ((void*)0), WM_KEYFIRST, WM_KEYLAST, PM_REMOVE))
        DispatchMessageA(&msg);
    ok_sequence(WmKeyReleaseOnly, "key release after setkeyboardstate", TRUE);

    key_state = GetAsyncKeyState(0x41);
    ok((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    key_state = GetKeyState(0x41);
    ok((key_state & 0x8000) == 0, "unexpected key state %x\n", key_state);

    DestroyWindow(test_window);
    flush_sequence();
}
