
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idResult; } ;
typedef scalar_t__ HWND ;
typedef int DWORD ;
typedef TYPE_1__ DIALOGINFO ;
typedef int BOOL ;


 int BM_SETSTYLE ;
 int BS_DEFPUSHBUTTON ;
 int BS_PUSHBUTTON ;
 scalar_t__ DEFDLG_FindDefButton (scalar_t__) ;
 int DLGC_DEFPUSHBUTTON ;
 int DLGC_UNDEFPUSHBUTTON ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRUE ;
 int WM_GETDLGCODE ;

__attribute__((used)) static BOOL DEFDLG_SetDefButton( HWND hwndDlg, DIALOGINFO *dlgInfo, HWND hwndNew )
{
    DWORD dlgcode=0;
    HWND hwndOld = GetDlgItem( hwndDlg, dlgInfo->idResult );

    if (hwndNew &&
        !((dlgcode=SendMessageW(hwndNew, WM_GETDLGCODE, 0, 0 ))
            & (DLGC_UNDEFPUSHBUTTON | DLGC_DEFPUSHBUTTON)))
    {





        hwndNew = hwndOld;
        dlgcode = SendMessageW(hwndNew, WM_GETDLGCODE, 0, 0 );
    }


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
