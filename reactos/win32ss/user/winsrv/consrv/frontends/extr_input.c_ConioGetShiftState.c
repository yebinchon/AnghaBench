
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PBYTE ;
typedef int LPARAM ;
typedef int DWORD ;


 int CAPSLOCK_ON ;
 int ENHANCED_KEY ;
 int LEFT_ALT_PRESSED ;
 int LEFT_CTRL_PRESSED ;
 int NUMLOCK_ON ;
 int RIGHT_ALT_PRESSED ;
 int RIGHT_CTRL_PRESSED ;
 int SCROLLLOCK_ON ;
 int SHIFT_PRESSED ;
 size_t VK_CAPITAL ;
 size_t VK_LCONTROL ;
 size_t VK_LMENU ;
 size_t VK_NUMLOCK ;
 size_t VK_RCONTROL ;
 size_t VK_RMENU ;
 size_t VK_SCROLL ;
 size_t VK_SHIFT ;

__attribute__((used)) static DWORD
ConioGetShiftState(PBYTE KeyState, LPARAM lParam)
{
    DWORD ssOut = 0;

    if (KeyState[VK_CAPITAL] & 0x01)
        ssOut |= CAPSLOCK_ON;

    if (KeyState[VK_NUMLOCK] & 0x01)
        ssOut |= NUMLOCK_ON;

    if (KeyState[VK_SCROLL] & 0x01)
        ssOut |= SCROLLLOCK_ON;

    if (KeyState[VK_SHIFT] & 0x80)
        ssOut |= SHIFT_PRESSED;

    if (KeyState[VK_LCONTROL] & 0x80)
        ssOut |= LEFT_CTRL_PRESSED;
    if (KeyState[VK_RCONTROL] & 0x80)
        ssOut |= RIGHT_CTRL_PRESSED;

    if (KeyState[VK_LMENU] & 0x80)
        ssOut |= LEFT_ALT_PRESSED;
    if (KeyState[VK_RMENU] & 0x80)
        ssOut |= RIGHT_ALT_PRESSED;


    if (lParam & 0x01000000)
        ssOut |= ENHANCED_KEY;

    return ssOut;
}
