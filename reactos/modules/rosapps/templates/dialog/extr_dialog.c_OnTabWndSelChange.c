
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BringWindowToTop (int ) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SetFocus (int ) ;
 int ShowWindow (int ,int ) ;
 int TabCtrl_GetCurSel (int ) ;
 int hPage1 ;
 int hPage2 ;
 int hPage3 ;
 int hTabWnd ;

void OnTabWndSelChange(void)
{
    switch (TabCtrl_GetCurSel(hTabWnd)) {
    case 0:
        ShowWindow(hPage1, SW_SHOW);
        ShowWindow(hPage2, SW_HIDE);
        ShowWindow(hPage3, SW_HIDE);
        BringWindowToTop(hPage1);
        SetFocus(hTabWnd);
        break;
    case 1:
        ShowWindow(hPage1, SW_HIDE);
        ShowWindow(hPage2, SW_SHOW);
        ShowWindow(hPage3, SW_HIDE);
        BringWindowToTop(hPage2);
        SetFocus(hTabWnd);
        break;
    case 2:
        ShowWindow(hPage1, SW_HIDE);
        ShowWindow(hPage2, SW_HIDE);
        ShowWindow(hPage3, SW_SHOW);
        BringWindowToTop(hPage3);
        SetFocus(hTabWnd);
        break;
    }
}
