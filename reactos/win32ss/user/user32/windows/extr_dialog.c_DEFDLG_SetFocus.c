
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int DLGC_HASSETSEL ;
 int EM_SETSEL ;
 int SendMessageW (int ,int ,int ,int) ;
 int SetFocus (int ) ;
 int WM_GETDLGCODE ;

__attribute__((used)) static void DEFDLG_SetFocus( HWND hwndCtrl )
{
    if (SendMessageW( hwndCtrl, WM_GETDLGCODE, 0, 0 ) & DLGC_HASSETSEL)
        SendMessageW( hwndCtrl, EM_SETSEL, 0, -1 );
    SetFocus( hwndCtrl );
}
