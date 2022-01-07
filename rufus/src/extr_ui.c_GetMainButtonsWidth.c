
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int download ;
struct TYPE_5__ {int cx; } ;
struct TYPE_4__ {scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int LONG ;
typedef int HWND ;


 unsigned int ARRAYSIZE (int *) ;
 int BS_SPLITBUTTON ;
 int CharUpperBuffU (char*,int) ;
 int GWL_STYLE ;
 int GetDlgItem (int ,int ) ;
 TYPE_3__ GetTextSize (int ,char*) ;
 int GetTextWidth (int ,int ) ;
 int GetWindowLong (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDCANCEL ;
 int IDC_SELECT ;
 int MSG_007 ;
 int MSG_040 ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int SetWindowLong (int ,int ,int ) ;
 scalar_t__ bw ;
 int cbw ;
 scalar_t__ enable_fido ;
 char* lmprintf (int ) ;
 int * main_button_ids ;
 scalar_t__ max (scalar_t__,int) ;
 int static_strcpy (char*,char*) ;

void GetMainButtonsWidth(HWND hDlg)
{
 unsigned int i;
 RECT rc;
 LONG style;
 char download[64];

 GetWindowRect(GetDlgItem(hDlg, main_button_ids[0]), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 bw = rc.right - rc.left;

 for (i = 0; i < ARRAYSIZE(main_button_ids); i++) {

  bw = max(bw, GetTextWidth(hDlg, main_button_ids[i]) + ((enable_fido && i == 0) ? (3 * cbw) / 2 : cbw));
 }


 bw = max(bw, GetTextSize(GetDlgItem(hDlg, IDCANCEL), lmprintf(MSG_007)).cx + cbw);
 if (enable_fido) {
  static_strcpy(download, lmprintf(MSG_040));
  CharUpperBuffU(download, sizeof(download));
  bw = max(bw, GetTextSize(GetDlgItem(hDlg, IDC_SELECT), download).cx + (3 * cbw) / 2);
  style = GetWindowLong(GetDlgItem(hDlg, IDC_SELECT), GWL_STYLE);
  style|= BS_SPLITBUTTON;
  SetWindowLong(GetDlgItem(hDlg, IDC_SELECT), GWL_STYLE, style);
 }
}
