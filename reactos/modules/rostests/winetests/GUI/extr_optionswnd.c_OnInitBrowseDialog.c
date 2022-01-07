
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hBrowseDlg; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef scalar_t__ LPARAM ;
typedef int LONG_PTR ;
typedef int HWND ;
typedef int BOOL ;


 int GWLP_USERDATA ;
 int SetWindowLongPtr (int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
OnInitBrowseDialog(HWND hDlg,
                   LPARAM lParam)
{
    PMAIN_WND_INFO pInfo;

    pInfo = (PMAIN_WND_INFO)lParam;

    pInfo->hBrowseDlg = hDlg;

    SetWindowLongPtr(hDlg,
                     GWLP_USERDATA,
                     (LONG_PTR)pInfo);

    return TRUE;
}
