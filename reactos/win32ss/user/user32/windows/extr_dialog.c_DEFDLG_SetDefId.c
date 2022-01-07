
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int idResult; } ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef int DWORD ;
typedef TYPE_1__ DIALOGINFO ;
typedef int BOOL ;


 int BM_SETSTYLE ;
 int BS_DEFPUSHBUTTON ;
 int BS_PUSHBUTTON ;
 scalar_t__ DEFDLG_FindDefButton (scalar_t__) ;
 int DLGC_BUTTON ;
 int DLGC_DEFPUSHBUTTON ;
 int DLGC_UNDEFPUSHBUTTON ;
 int FALSE ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRUE ;
 int WM_GETDLGCODE ;

__attribute__((used)) static BOOL DEFDLG_SetDefId( HWND hwndDlg, DIALOGINFO *dlgInfo, WPARAM wParam)
{
    DWORD dlgcode=0;
    HWND hwndOld, hwndNew = GetDlgItem(hwndDlg, wParam);
    INT old_id = dlgInfo->idResult;

    dlgInfo->idResult = wParam;
    if (hwndNew &&
        !((dlgcode=SendMessageW(hwndNew, WM_GETDLGCODE, 0, 0 ))
            & (DLGC_UNDEFPUSHBUTTON | DLGC_BUTTON)))
        return FALSE;


    hwndOld = GetDlgItem( hwndDlg, old_id );
    if (!hwndOld || !(SendMessageW( hwndOld, WM_GETDLGCODE, 0, 0) & DLGC_DEFPUSHBUTTON))
        hwndOld = DEFDLG_FindDefButton( hwndDlg );
    if (hwndOld && hwndOld != hwndNew)
        SendMessageW( hwndOld, BM_SETSTYLE, BS_PUSHBUTTON, TRUE );

    if (hwndNew)
    {
        if(dlgcode & DLGC_UNDEFPUSHBUTTON)
            SendMessageW( hwndNew, BM_SETSTYLE, BS_DEFPUSHBUTTON, TRUE );
    }
    return TRUE;
}
