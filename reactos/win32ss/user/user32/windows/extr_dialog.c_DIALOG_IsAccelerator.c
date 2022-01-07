
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef char WPARAM ;
typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int DWORD ;
typedef int BOOL ;


 int BM_CLICK ;
 int BS_GROUPBOX ;
 int DLGC_BUTTON ;
 int DLGC_STATIC ;
 int FALSE ;
 int GWL_STYLE ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 scalar_t__ GetParent (scalar_t__) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 int GetWindowLongPtrW (scalar_t__,int ) ;
 scalar_t__ GetWindowTextW (scalar_t__,char*,int) ;
 int SendMessageW (scalar_t__,int ,char,int) ;
 int TRUE ;
 int WM_GETDLGCODE ;
 int WM_NEXTDLGCTL ;
 int WS_DISABLED ;
 int WS_VISIBLE ;
 char* strchrW (char*,char) ;
 scalar_t__ toupperW (char) ;

__attribute__((used)) static BOOL DIALOG_IsAccelerator( HWND hwnd, HWND hwndDlg, WPARAM wParam )
{
    HWND hwndControl = hwnd;
    HWND hwndNext;
    INT dlgCode;
    WCHAR buffer[128];

    do
    {
        DWORD style = GetWindowLongPtrW( hwndControl, GWL_STYLE );
        if ((style & (WS_VISIBLE | WS_DISABLED)) == WS_VISIBLE)
        {
            dlgCode = SendMessageW( hwndControl, WM_GETDLGCODE, 0, 0 );
            if ( (dlgCode & (DLGC_BUTTON | DLGC_STATIC)) &&
                 GetWindowTextW( hwndControl, buffer, sizeof(buffer)/sizeof(WCHAR) ))
            {

                LPWSTR p = buffer - 2;

                do
                {
                    p = strchrW( p + 2, '&' );
                }
                while (p != ((void*)0) && p[1] == '&');


                if (p != ((void*)0) && toupperW( p[1] ) == toupperW( wParam ) )
                {
                    if ((dlgCode & DLGC_STATIC) || (style & 0x0f) == BS_GROUPBOX )
                    {

                        SendMessageW( hwndDlg, WM_NEXTDLGCTL, (WPARAM)hwndControl, 1);

                        SendMessageW( hwndDlg, WM_NEXTDLGCTL, 0, 0);
                    }
                    else if (dlgCode & DLGC_BUTTON)
                    {

                        SendMessageW( hwndControl, BM_CLICK, 0, 0 );
                    }
                    return TRUE;
                }
            }
            hwndNext = GetWindow( hwndControl, GW_CHILD );
        }
        else hwndNext = 0;

        if (!hwndNext) hwndNext = GetWindow( hwndControl, GW_HWNDNEXT );

        while (!hwndNext && hwndControl)
        {
            hwndControl = GetParent( hwndControl );
            if (hwndControl == hwndDlg)
            {
                if(hwnd==hwndDlg)
                {
                    hwndNext=hwnd;
                    break;
                }
                hwndNext = GetWindow( hwndDlg, GW_CHILD );
            }
            else
                hwndNext = GetWindow( hwndControl, GW_HWNDNEXT );
        }
        hwndControl = hwndNext;
    }
    while (hwndControl && (hwndControl != hwnd));

    return FALSE;
}
