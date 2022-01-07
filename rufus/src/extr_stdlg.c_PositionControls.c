
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cx; } ;
struct TYPE_4__ {int right; int left; int top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int * HWND ;


 int ARRAYSIZE (int *) ;
 int GW_HWNDPREV ;
 int * GetDlgItem (int *,int ) ;
 int * GetNextWindow (int *,int ) ;
 TYPE_3__ GetTextSize (int *,int ) ;
 int GetTextWidth (int *,int ) ;
 int GetWindowRect (int *,TYPE_1__*) ;
 int IDCANCEL ;
 int IDC_CHECK_NOW ;
 int IDC_UPDATE_FREQUENCY ;
 int IDS_INCLUDE_BETAS_TXT ;
 int IDS_UPDATE_FREQUENCY_TXT ;
 int MSG_008 ;
 int MSG_009 ;
 int MSG_013 ;
 int MSG_014 ;
 int MSG_015 ;
 int MSG_016 ;
 int MSG_030 ;
 int MapWindowPoints (int *,int *,int *,int) ;
 int Reposition (int *,int ,int,int) ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int *,int *,int,int,int,scalar_t__,int) ;
 int cbw ;
 scalar_t__ ddbh ;
 int ddw ;
 int lmprintf (int ,...) ;
 int max (int,int) ;
 int * update_settings_reposition_ids ;

__attribute__((used)) static void PositionControls(HWND hDlg)
{
 RECT rc;
 HWND hCtrl, hPrevCtrl;
 int i, ow, dw;


 GetWindowRect(GetDlgItem(hDlg, IDS_UPDATE_FREQUENCY_TXT), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 ow = rc.right - rc.left;
 dw = GetTextWidth(hDlg, IDS_UPDATE_FREQUENCY_TXT) - ow;
 dw = max(dw, GetTextWidth(hDlg, IDS_INCLUDE_BETAS_TXT) - ow);
 if (dw > 0) {
  GetWindowRect(hDlg, &rc);
  SetWindowPos(hDlg, ((void*)0), -1, -1, rc.right - rc.left + dw, rc.bottom - rc.top, SWP_NOMOVE | SWP_NOZORDER);
  for (i = 0; i < ARRAYSIZE(update_settings_reposition_ids); i++)
   Reposition(hDlg, update_settings_reposition_ids[i], (i < 4) ? 0 : dw, (i >= 4) ? 0 : dw);
 }

 hCtrl = GetDlgItem(hDlg, IDC_UPDATE_FREQUENCY);
 GetWindowRect(hCtrl, &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 ow = rc.right - rc.left;

 dw = GetTextSize(hCtrl, lmprintf(MSG_013)).cx;
 dw = max(dw, GetTextSize(hCtrl, lmprintf(MSG_030, lmprintf(MSG_014))).cx);
 dw = max(dw, GetTextSize(hCtrl, lmprintf(MSG_015)).cx);
 dw = max(dw, GetTextSize(hCtrl, lmprintf(MSG_016)).cx);
 dw = max(dw, GetTextSize(hCtrl, lmprintf(MSG_008)).cx);
 dw = max(dw, GetTextSize(hCtrl, lmprintf(MSG_009)).cx);
 dw -= ow - ddw;
 if (dw > 0) {
  GetWindowRect(hDlg, &rc);
  SetWindowPos(hDlg, ((void*)0), -1, -1, rc.right - rc.left + dw, rc.bottom - rc.top, SWP_NOMOVE | SWP_NOZORDER);
  for (i = 0; i < ARRAYSIZE(update_settings_reposition_ids); i++) {
   if ((i >= 2) && (i <= 3))
    continue;
   Reposition(hDlg, update_settings_reposition_ids[i], (i < 6) ? 0 : dw, (i >= 6) ? 0 : dw);
  }
 }

 GetWindowRect(GetDlgItem(hDlg, IDC_CHECK_NOW), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 ow = rc.right - rc.left;
 dw = GetTextWidth(hDlg, IDC_CHECK_NOW) - ow + cbw;
 dw = max(dw, GetTextWidth(hDlg, IDCANCEL) - ow + cbw);
 if (dw > 0) {
  GetWindowRect(hDlg, &rc);
  SetWindowPos(hDlg, ((void*)0), -1, -1, rc.right - rc.left + dw, rc.bottom - rc.top, SWP_NOMOVE | SWP_NOZORDER);
  for (i = 0; i < ARRAYSIZE(update_settings_reposition_ids); i++) {
   if ((i >= 1) && (i <= 5))
    continue;
   Reposition(hDlg, update_settings_reposition_ids[i], 0, dw);
  }
 }
 hCtrl = GetDlgItem(hDlg, IDC_CHECK_NOW);
 GetWindowRect(hCtrl, &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 hPrevCtrl = GetNextWindow(hCtrl, GW_HWNDPREV);
 SetWindowPos(hCtrl, hPrevCtrl, rc.left, rc.top, rc.right - rc.left, ddbh, 0);
 hCtrl = GetDlgItem(hDlg, IDCANCEL);
 GetWindowRect(hCtrl, &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 hPrevCtrl = GetNextWindow(hCtrl, GW_HWNDPREV);
 SetWindowPos(hCtrl, hPrevCtrl, rc.left, rc.top, rc.right - rc.left, ddbh, 0);
}
