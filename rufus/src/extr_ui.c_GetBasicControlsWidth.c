
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_6__ {int member_2; int member_3; scalar_t__ right; int left; scalar_t__ top; scalar_t__ bottom; int member_1; int member_0; } ;
struct TYPE_5__ {scalar_t__ cx; scalar_t__ cy; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ RECT ;
typedef int POINT ;
typedef int LPARAM ;
typedef int HWND ;


 scalar_t__ FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_2__*) ;
 int IDC_PARTITION_TYPE ;
 int IDC_SAVE ;
 int IDC_TARGET_SYSTEM ;
 int IDS_CSM_HELP_TXT ;
 int MapDialogRect (int ,TYPE_2__*) ;
 int MapWindowPoints (int *,int ,int *,int) ;
 void* MulDiv (int,scalar_t__,int) ;
 int SendMessage (int ,int ,int ,int ) ;
 int TB_GETIDEALSIZE ;
 scalar_t__ WINDOWS_10 ;
 scalar_t__ bh ;
 void* cbw ;
 void* ddw ;
 int hDeviceList ;
 int hSaveToolbar ;
 int hTargetSystem ;
 int mw ;
 scalar_t__ nWindowsVersion ;
 scalar_t__ sbw ;
 int ssw ;
 int sw ;
 int tw ;

void GetBasicControlsWidth(HWND hDlg)
{
 int checkbox_internal_spacing = 12, dropdown_internal_spacing = 15;
 RECT rc = { 0, 0, 4, 8 };
 SIZE sz;



 MapDialogRect(hDlg, &rc);
 sz.cx = rc.right;
 sz.cy = rc.bottom;


 if (nWindowsVersion == WINDOWS_10) {
  checkbox_internal_spacing = 10;
  dropdown_internal_spacing = 13;
 }


 cbw = MulDiv(checkbox_internal_spacing, sz.cx, 4);
 ddw = MulDiv(dropdown_internal_spacing, sz.cx, 4);


 GetWindowRect(GetDlgItem(hDlg, IDC_TARGET_SYSTEM), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 sw = rc.left;
 GetWindowRect(GetDlgItem(hDlg, IDC_PARTITION_TYPE), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 sw -= rc.right;
 mw = rc.left;


 SendMessage(hSaveToolbar, TB_GETIDEALSIZE, (WPARAM)FALSE, (LPARAM)&sz);
 sbw = sz.cx;


 GetWindowRect(GetDlgItem(hDlg, IDC_SAVE), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 bh = rc.bottom - rc.top;
 ssw = rc.left;
 GetWindowRect(hDeviceList, &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 ssw -= rc.right;


 GetWindowRect(GetDlgItem(hDlg, IDS_CSM_HELP_TXT), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 tw = rc.left;
 GetWindowRect(hTargetSystem, &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 tw -= rc.right;
}
