
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef scalar_t__ HWND ;


 int SendMessage (scalar_t__,int ,int ,int ) ;
 int TRUE ;
 int WM_NEXTDLGCTL ;

void SetDialogFocus(HWND hDlg, HWND hCtrl)
{
 SendMessage(hDlg, WM_NEXTDLGCTL, (WPARAM)hCtrl, TRUE);
}
