
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__* PWND ;
typedef scalar_t__ HWND ;


 int DS_CONTROL ;
 int GWL_STYLE ;
 scalar_t__ GetDesktopWindow () ;
 scalar_t__ GetParent (scalar_t__) ;
 int GetWindowLongA (scalar_t__,int ) ;
 int IsWindow (scalar_t__) ;
 int TestWindowProcess (TYPE_1__*) ;
 TYPE_1__* ValidateHwnd (scalar_t__) ;
 int WNDS_DIALOGWINDOW ;

__attribute__((used)) static HWND DIALOG_FindMsgDestination( HWND hwndDlg )
{
    while (GetWindowLongA(hwndDlg, GWL_STYLE) & DS_CONTROL)
    {
        PWND pWnd;
        HWND hParent = GetParent(hwndDlg);
        if (!hParent) break;

        if (!IsWindow(hParent)) break;

        pWnd = ValidateHwnd(hParent);

        if (!pWnd || !TestWindowProcess(pWnd) || hParent == GetDesktopWindow()) break;

        if (!(pWnd->state & WNDS_DIALOGWINDOW))
        {
            break;
        }

        hwndDlg = hParent;
    }

    return hwndDlg;
}
