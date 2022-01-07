
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int WORD ;
typedef int UINT ;
typedef int LPARAM ;
typedef size_t KEV ;


 int* AsyncKeyStateTable ;
 int* GETFLAGS ;
 int * GETSCAN ;
 int* GETVKEY ;
 int* InputKeyStateTable ;
 int KEYEVENTF_EXTENDEDKEY ;
 int KEYEVENTF_KEYUP ;
 int KF_ALTDOWN ;
 int KF_EXTENDED ;
 int KF_REPEAT ;
 int KF_UP ;
 int LOBYTE (int ) ;
 int MAKELPARAM (int,int) ;
 size_t TrackSysKey ;
 int VK_CONTROL ;
 size_t VK_MENU ;
 int WM_KEYDOWN ;
 int WM_KEYUP ;
 int WM_SYSKEYDOWN ;
 int WM_SYSKEYUP ;

__attribute__((used)) static int KbdMessage( KEV kev, WPARAM *pwParam, LPARAM *plParam )
{
    UINT message;
    int VKey = GETVKEY[kev];
    WORD flags;

    flags = LOBYTE(GETSCAN[kev]);
    if (GETFLAGS[kev] & KEYEVENTF_EXTENDEDKEY) flags |= KF_EXTENDED;

    if (GETFLAGS[kev] & KEYEVENTF_KEYUP )
    {
        message = WM_KEYUP;
        if( (InputKeyStateTable[VK_MENU] & 0x80) && (
                (VKey == VK_MENU) || (VKey == VK_CONTROL) ||
                 !(InputKeyStateTable[VK_CONTROL] & 0x80))) {
            if( TrackSysKey == VK_MENU ||
                    (VKey != VK_MENU))
                message = WM_SYSKEYUP;
            TrackSysKey = 0;
        }
        InputKeyStateTable[VKey] &= ~0x80;
        flags |= KF_REPEAT | KF_UP;
    }
    else
    {
        if (InputKeyStateTable[VKey] & 0x80) flags |= KF_REPEAT;
        if (!(InputKeyStateTable[VKey] & 0x80)) InputKeyStateTable[VKey] ^= 0x01;
        InputKeyStateTable[VKey] |= 0x80;
        AsyncKeyStateTable[VKey] |= 0x80;

        message = WM_KEYDOWN;
        if( (InputKeyStateTable[VK_MENU] & 0x80) &&
                !(InputKeyStateTable[VK_CONTROL] & 0x80)) {
            message = WM_SYSKEYDOWN;
            TrackSysKey = VKey;
        }
    }

    if (InputKeyStateTable[VK_MENU] & 0x80) flags |= KF_ALTDOWN;

    if( plParam) *plParam = MAKELPARAM( 1, flags );
    if( pwParam) *pwParam = VKey;
    return message;
}
