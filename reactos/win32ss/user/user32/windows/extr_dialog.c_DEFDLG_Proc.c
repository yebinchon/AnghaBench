
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_6__ {int flags; int hUserFont; int idResult; int hMenu; } ;
typedef int RECT ;
typedef int LRESULT ;
typedef int LPPOINT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int DWORD ;
typedef TYPE_1__ DIALOGINFO ;


 int BN_CLICKED ;
 int CB_SHOWDROPDOWN ;
 int DC_HASDEFID ;
 int DEFDLG_FindDefButton (int ) ;
 int DEFDLG_Reposition (int ) ;
 int DEFDLG_RestoreFocus (int ,int ) ;
 int DEFDLG_SaveFocus (int ) ;
 int DEFDLG_SetDefButton (int ,TYPE_1__*,int ) ;
 int DEFDLG_SetDefId (int ,TYPE_1__*,int ) ;
 int DEFDLG_SetFocus (int ) ;
 int DF_DIALOGACTIVE ;
 int DF_END ;
 int DIALOG_FindMsgDestination (int ) ;



 int DPtoLP (int ,int ,int) ;
 int DWLP_ROS_DIALOGINFO ;
 int DefWindowProcA (int ,int,int ,int ) ;
 int DeleteObject (int ) ;
 int DestroyMenu (int ) ;
 int FALSE ;
 int FillRect (int ,int *,int ) ;
 int GetClientRect (int ,int *) ;
 int GetControlColor (int ,int ,int ,int ) ;
 int GetDlgCtrlID (int ) ;
 int GetDlgItem (int ,int ) ;
 int GetFocus () ;
 int GetNextDlgTabItem (int ,int ,int ) ;
 int GetParent (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IDCANCEL ;
 int MAKELONG (int ,int ) ;
 int MAKEWPARAM (int ,int ) ;
 int NtUserSetThreadState (int ,int ) ;
 int NtUserxSetDialogPointer (int ,int ) ;
 int PostMessageA (int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 scalar_t__ SetWindowLongPtrW (int ,int ,int ) ;
 int TRUE ;


 int WM_COMMAND ;
 int WM_CTLCOLORDLG ;
__attribute__((used)) static LRESULT DEFDLG_Proc( HWND hwnd, UINT msg, WPARAM wParam,
                            LPARAM lParam, DIALOGINFO *dlgInfo )
{
    switch(msg)
    {
        case 135:
        {
            HBRUSH brush = GetControlColor( hwnd, hwnd, (HDC)wParam, WM_CTLCOLORDLG);
            if (brush)
            {
                RECT rect;
                HDC hdc = (HDC)wParam;
                GetClientRect( hwnd, &rect );
                DPtoLP( hdc, (LPPOINT)&rect, 2 );
                FillRect( hdc, &rect, brush );
            }
            return 1;
        }
        case 132:

            if ((dlgInfo = (DIALOGINFO *)SetWindowLongPtrW( hwnd, DWLP_ROS_DIALOGINFO, 0 )))
            {
                if (dlgInfo->hUserFont) DeleteObject( dlgInfo->hUserFont );
                if (dlgInfo->hMenu) DestroyMenu( dlgInfo->hMenu );
                HeapFree( GetProcessHeap(), 0, dlgInfo );
                NtUserSetThreadState(0,DF_DIALOGACTIVE);
                NtUserxSetDialogPointer( hwnd, 0 );
            }

            return DefWindowProcA( hwnd, msg, wParam, lParam );

        case 128:
            if (!wParam) DEFDLG_SaveFocus( hwnd );
            return DefWindowProcA( hwnd, msg, wParam, lParam );

        case 138:
            {
               DWORD dwSetFlag;
               HWND hwndparent = DIALOG_FindMsgDestination( hwnd );

               dwSetFlag = wParam ? DF_DIALOGACTIVE : 0;
               if (hwndparent != hwnd) NtUserSetThreadState(dwSetFlag, DF_DIALOGACTIVE);
            }
            if (wParam) DEFDLG_RestoreFocus( hwnd, TRUE );
            else DEFDLG_SaveFocus( hwnd );
            return 0;

        case 129:
            DEFDLG_RestoreFocus( hwnd, FALSE );
            return 0;

        case 139:
            if (dlgInfo && !(dlgInfo->flags & DF_END))
                DEFDLG_SetDefId( hwnd, dlgInfo, wParam );
            return 1;

        case 141:
            if (dlgInfo && !(dlgInfo->flags & DF_END))
            {
                HWND hwndDefId;
                if (dlgInfo->idResult)
                    return MAKELONG( dlgInfo->idResult, DC_HASDEFID );
                if ((hwndDefId = DEFDLG_FindDefButton( hwnd )))
                    return MAKELONG( GetDlgCtrlID( hwndDefId ), DC_HASDEFID);
            }
            return 0;






        case 130:
            if (dlgInfo)
            {
                HWND hwndDest = (HWND)wParam;
                if (!lParam)
                    hwndDest = GetNextDlgTabItem(hwnd, GetFocus(), wParam);
                if (hwndDest) DEFDLG_SetFocus( hwndDest );
                DEFDLG_SetDefButton( hwnd, dlgInfo, hwndDest );
            }
            return 0;

        case 136:
        case 133:
        case 131:
            {
                HWND hwndFocus = GetFocus();
                if (hwndFocus)
                {

                    if (!SendMessageW( hwndFocus, CB_SHOWDROPDOWN, FALSE, 0 ))
                        SendMessageW( GetParent(hwndFocus), CB_SHOWDROPDOWN, FALSE, 0 );
                }
            }
            return DefWindowProcA( hwnd, msg, wParam, lParam );

        case 134:
            return dlgInfo ? (LRESULT)dlgInfo->hUserFont : 0;

        case 137:
            PostMessageA( hwnd, WM_COMMAND, MAKEWPARAM(IDCANCEL, BN_CLICKED),
                            (LPARAM)GetDlgItem( hwnd, IDCANCEL ) );
            return 0;
    }
    return 0;
}
