
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int LONG_PTR ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GWL_EXSTYLE ;
 int GetDlgItem (int ,int ) ;
 int GetWindowLongPtr (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDC_PERSISTENCE_SIZE ;
 int IDC_PERSISTENCE_SLIDER ;
 int IDC_PERSISTENCE_UNITS ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SetWindowLongPtr (int ,int ,int ) ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int ShowWindow (int ,int ) ;
 int TRUE ;
 int WS_EX_RIGHT ;
 scalar_t__ bsw ;
 scalar_t__ fw ;
 int hMainDialog ;
 scalar_t__ mw ;
 scalar_t__ ssw ;

void TogglePersistenceControls(BOOL display)
{
 RECT rc;
 HWND hSize, hUnits;
 LONG_PTR style;
 LONG width = fw - bsw - ssw;
 hSize = GetDlgItem(hMainDialog, IDC_PERSISTENCE_SIZE);
 hUnits = GetDlgItem(hMainDialog, IDC_PERSISTENCE_UNITS);

 style = GetWindowLongPtr(hSize, GWL_EXSTYLE);
 if (display)
  style |= WS_EX_RIGHT;
 else
  style &= ~WS_EX_RIGHT;
 SetWindowLongPtr(hSize, GWL_EXSTYLE, style);

 if (display) {
  GetWindowRect(hUnits, &rc);
  MapWindowPoints(((void*)0), hMainDialog, (POINT*)&rc, 2);
  width -= (rc.right - rc.left) + ssw;
 }

 GetWindowRect(hSize, &rc);
 MapWindowPoints(((void*)0), hMainDialog, (POINT*)&rc, 2);
 SetWindowPos(hSize, GetDlgItem(hMainDialog, IDC_PERSISTENCE_SLIDER), mw + bsw + ssw, rc.top, width, rc.bottom - rc.top, 0);

 EnableWindow(hSize, display ? TRUE : FALSE);
 EnableWindow(hUnits, display ? TRUE : FALSE);
 ShowWindow(hUnits, display ? SW_SHOW : SW_HIDE);
}
