
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int LPARAM ;
typedef int LONG ;
typedef scalar_t__ HWND ;


 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 scalar_t__ GetForegroundWindow () ;
 int IDC_PS_DISPLAYLIST ;
 int LB_GETCOUNT ;
 int LB_GETCURSEL ;
 int LB_GETITEMDATA ;
 int LB_GETTEXT ;
 int LB_INSERTSTRING ;
 int LB_RESETCONTENT ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int SendMessageW (scalar_t__,int ,int,int) ;
 int SetFocus (scalar_t__) ;
 int WM_SETREDRAW ;

__attribute__((used)) static void update_display_list(HWND hdlg, UINT src_list_id)
{
    LONG count, i, old_pos;
    WCHAR txt[256];
    LONG item_data;
    HWND display_list = GetDlgItem(hdlg, IDC_PS_DISPLAYLIST);
    HWND list = GetDlgItem(hdlg, src_list_id);

    old_pos = SendMessageW(display_list, LB_GETCURSEL, 0, 0);
    if(old_pos == -1) old_pos = 0;

    SendMessageW(display_list, WM_SETREDRAW, 0, 0);
    SendMessageW(display_list, LB_RESETCONTENT, 0, 0);
    count = SendMessageW(list, LB_GETCOUNT, 0, 0);
    for(i = 0; i < count; i++)
    {
        SendMessageW(list, LB_GETTEXT, i, (LPARAM)txt);
        item_data = SendMessageW(list, LB_GETITEMDATA, i, 0);
        SendMessageW(display_list, LB_INSERTSTRING, i, (LPARAM)txt);
        SendMessageW(display_list, LB_SETITEMDATA, i, item_data);
    }
    SendMessageW(display_list, LB_SETCURSEL, 0, 0);
    SendMessageW(display_list, WM_SETREDRAW, 1, 0);
    if(GetForegroundWindow() == hdlg)
        SetFocus(display_list);
}
