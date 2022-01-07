
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int * HWND ;


 int DLGC_DEFPUSHBUTTON ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GW_CHILD ;
 int GW_HWNDNEXT ;
 int * GetWindow (int *,int ) ;
 int GetWindowLongPtrW (int *,int ) ;
 int SendMessageW (int *,int ,int ,int ) ;
 int WM_GETDLGCODE ;
 int WS_DISABLED ;
 int WS_EX_CONTROLPARENT ;
 int WS_VISIBLE ;

__attribute__((used)) static HWND DEFDLG_FindDefButton( HWND hwndDlg )
{
    HWND hwndChild, hwndTmp;

    hwndChild = GetWindow( hwndDlg, GW_CHILD );
    while (hwndChild)
    {
        if (SendMessageW( hwndChild, WM_GETDLGCODE, 0, 0 ) & DLGC_DEFPUSHBUTTON)
            break;


        if (GetWindowLongPtrW( hwndChild, GWL_EXSTYLE ) & WS_EX_CONTROLPARENT)
        {
            LONG dsStyle = GetWindowLongPtrW( hwndChild, GWL_STYLE );
            if ((dsStyle & WS_VISIBLE) && !(dsStyle & WS_DISABLED) &&
                (hwndTmp = DEFDLG_FindDefButton(hwndChild)) != ((void*)0))
           return hwndTmp;
        }
        hwndChild = GetWindow( hwndChild, GW_HWNDNEXT );
    }
    return hwndChild;
}
