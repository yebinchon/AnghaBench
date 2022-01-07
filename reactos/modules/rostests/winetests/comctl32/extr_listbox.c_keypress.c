
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;
typedef int HWND ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int KEYEVENTF_EXTENDEDKEY ;
 int SendMessageA (int ,int ,int ,int) ;
 int WM_KEYDOWN ;
 int WM_KEYUP ;

__attribute__((used)) static void keypress(HWND handle, WPARAM keycode, BYTE scancode, BOOL extended)
{
    LPARAM lp = 1 + (scancode << 16) + (extended ? KEYEVENTF_EXTENDEDKEY : 0);

    SendMessageA(handle, WM_KEYDOWN, keycode, lp);
    SendMessageA(handle, WM_KEYUP , keycode, lp | 0xc000000);
}
