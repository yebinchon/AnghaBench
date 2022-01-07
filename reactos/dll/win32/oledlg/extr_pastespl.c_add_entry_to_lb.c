
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ lpstrFormatName; } ;
typedef TYPE_1__ OLEUIPASTEENTRYW ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int LB_ADDSTRING ;
 int LB_FINDSTRING ;
 int LB_SETITEMDATA ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL add_entry_to_lb(HWND hdlg, UINT id, OLEUIPASTEENTRYW *pe)
{
    HWND hwnd = GetDlgItem(hdlg, id);
    BOOL ret = FALSE;






    if(SendMessageW(hwnd, LB_FINDSTRING, 0, (LPARAM)pe->lpstrFormatName) == -1)
    {
        LRESULT pos = SendMessageW(hwnd, LB_ADDSTRING, 0, (LPARAM)pe->lpstrFormatName);
        SendMessageW(hwnd, LB_SETITEMDATA, pos, (LPARAM)pe);
        ret = TRUE;
    }
    return ret;
}
