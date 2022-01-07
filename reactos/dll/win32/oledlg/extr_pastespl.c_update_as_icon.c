
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ ps_struct_t ;
typedef int HWND ;


 int CheckDlgButton (int ,int ,int) ;
 int EnableWindow (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_PS_CHANGEICON ;
 int IDC_PS_DISPLAYASICON ;
 int IDC_PS_ICONDISPLAY ;
 int PSF_CHECKDISPLAYASICON ;
 int SW_HIDE ;
 int ShowWindow (int ,int ) ;

__attribute__((used)) static void update_as_icon(HWND hdlg, ps_struct_t *ps_struct)
{
    HWND icon_display = GetDlgItem(hdlg, IDC_PS_ICONDISPLAY);
    HWND display_as_icon = GetDlgItem(hdlg, IDC_PS_DISPLAYASICON);
    HWND change_icon = GetDlgItem(hdlg, IDC_PS_CHANGEICON);


    ps_struct->flags &= ~PSF_CHECKDISPLAYASICON;

    CheckDlgButton(hdlg, IDC_PS_DISPLAYASICON, ps_struct->flags & PSF_CHECKDISPLAYASICON);
    EnableWindow(display_as_icon, 0);
    ShowWindow(icon_display, SW_HIDE);
    EnableWindow(icon_display, 0);
    ShowWindow(change_icon, SW_HIDE);
    EnableWindow(change_icon, 0);
}
