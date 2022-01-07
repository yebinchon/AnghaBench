
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hWndFocus; int hwnd; } ;
typedef TYPE_1__ msi_dialog ;
typedef int HWND ;


 int FALSE ;
 int GetNextDlgTabItem (int ,int ,int ) ;
 int SetFocus (int ) ;
 int TRUE ;

__attribute__((used)) static void dialog_setfocus( msi_dialog *dialog )
{
    HWND hwnd = dialog->hWndFocus;

    hwnd = GetNextDlgTabItem( dialog->hwnd, hwnd, TRUE);
    hwnd = GetNextDlgTabItem( dialog->hwnd, hwnd, FALSE);
    SetFocus( hwnd );
    dialog->hWndFocus = hwnd;
}
