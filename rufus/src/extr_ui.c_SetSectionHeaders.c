
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wtmp ;
typedef int wchar_t ;
typedef int WPARAM ;
struct TYPE_6__ {int top; int left; } ;
struct TYPE_5__ {int cy; int cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ RECT ;
typedef int POINT ;
typedef int HWND ;
typedef scalar_t__ HFONT ;


 int ARRAYSIZE (int*) ;
 scalar_t__ CreateFontA (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,char*) ;
 int DEFAULT_CHARSET ;
 int FALSE ;
 int FW_SEMIBOLD ;
 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int GetDlgItem (int ,int) ;
 TYPE_1__ GetTextSize (int ,int *) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int GetWindowTextW (int ,int*,int) ;
 int LOGPIXELSY ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int MulDiv (int,int ,int) ;
 int PROOF_QUALITY ;
 int SWP_NOZORDER ;
 int SendDlgItemMessageA (int ,int,int ,int ,int ) ;
 int SetWindowPos (int ,int *,int ,int ,int ,int ,int ) ;
 int SetWindowTextW (int ,int*) ;
 int TRUE ;
 int WM_SETFONT ;
 int hMainDialog ;
 int memset (int*,int ,int) ;
 int* section_control_ids ;
 size_t wcslen (int*) ;

void SetSectionHeaders(HWND hDlg)
{
 RECT rc;
 HWND hCtrl;
 SIZE sz;
 HFONT hf;
 wchar_t wtmp[128];
 size_t wlen;
 int i;


 hf = CreateFontA(-MulDiv(14, GetDeviceCaps(GetDC(hMainDialog), LOGPIXELSY), 72), 0, 0, 0,
  FW_SEMIBOLD, FALSE, FALSE, FALSE, DEFAULT_CHARSET, 0, 0, PROOF_QUALITY, 0, "Segoe UI");

 for (i = 0; i < ARRAYSIZE(section_control_ids); i++) {
  SendDlgItemMessageA(hDlg, section_control_ids[i], WM_SETFONT, (WPARAM)hf, TRUE);
  hCtrl = GetDlgItem(hDlg, section_control_ids[i]);
  memset(wtmp, 0, sizeof(wtmp));
  GetWindowTextW(hCtrl, wtmp, ARRAYSIZE(wtmp));
  wlen = wcslen(wtmp);
  wtmp[wlen++] = L' ';
  wtmp[wlen++] = L' ';
  SetWindowTextW(hCtrl, wtmp);
  GetWindowRect(hCtrl, &rc);
  MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
  sz = GetTextSize(hCtrl, ((void*)0));
  SetWindowPos(hCtrl, ((void*)0), rc.left, rc.top, sz.cx, sz.cy, SWP_NOZORDER);
 }
}
