
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int LRESULT ;
typedef int HWND ;


 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 int IDC_HANDLELIST ;
 int IDC_PROCESSLIST ;
 int IDC_REFRESHHANDLE ;
 int IDC_REFRESHPROCESS ;
 int MoveWindow (int ,int,int,int,int,int ) ;
 int TRUE ;
 int g_Separator ;

__attribute__((used)) static LRESULT
MainWindow_OnSize(HWND hMainWnd)
{
 HWND hProcessListctrl, hHandleListCtrl, hProcessRefresh, hHandleRefresh;
 RECT rect;

 hProcessListctrl = GetDlgItem(hMainWnd, IDC_PROCESSLIST);
 hHandleListCtrl = GetDlgItem(hMainWnd, IDC_HANDLELIST);
 hProcessRefresh = GetDlgItem(hMainWnd, IDC_REFRESHPROCESS);
 hHandleRefresh = GetDlgItem(hMainWnd, IDC_REFRESHHANDLE);

 GetClientRect(hMainWnd, &rect);


 MoveWindow(hProcessListctrl, 5, 5, g_Separator - 5, rect.bottom - 40, TRUE);
 MoveWindow(hHandleListCtrl, g_Separator + 5, 5, rect.right - g_Separator - 5, rect.bottom - 40, TRUE);
 MoveWindow(hProcessRefresh, g_Separator - 90, rect.bottom - 30, 90, 25, TRUE);
 MoveWindow(hHandleRefresh, rect.right - 90, rect.bottom - 30, 90, 25, TRUE);

 return 0;
}
