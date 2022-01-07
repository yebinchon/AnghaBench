
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int HWND ;


 int ARRAYSIZE (scalar_t__**) ;
 int GW_HWNDPREV ;
 int GetDlgItem (int ,scalar_t__) ;
 int GetNextWindow (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 scalar_t__ IDC_QUICK_FORMAT ;
 int InvalidateRect (int ,int *,int ) ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int ResizeDialogs (int) ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int TRUE ;
 scalar_t__** adjust_dpi_ids ;
 int advanced_device_section_height ;
 int advanced_format_section_height ;
 float fScale ;
 int* section_vpos ;

void AdjustForLowDPI(HWND hDlg)
{
 static int ddy = 4;
 int i, j;
 RECT rc;
 HWND hCtrl, hPrevCtrl;
 int dy = 0;

 if (fScale >= 1.3f)
  return;

 for (i = 0; i < ARRAYSIZE(adjust_dpi_ids); i++) {
  dy += ddy;



  if (adjust_dpi_ids[i][0] == IDC_QUICK_FORMAT)
   dy += 1;
  for (j = 0; j < 5; j++) {
   if (adjust_dpi_ids[i][j] == 0)
    break;
   hCtrl = GetDlgItem(hDlg, adjust_dpi_ids[i][j]);
   GetWindowRect(hCtrl, &rc);
   MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
   hPrevCtrl = GetNextWindow(hCtrl, GW_HWNDPREV);
   SetWindowPos(hCtrl, hPrevCtrl, rc.left, rc.top + dy,
    rc.right - rc.left, rc.bottom - rc.top, 0);
  }
 }

 section_vpos[1] += 9 * ddy;
 section_vpos[2] += 16 * ddy + 1;
 advanced_device_section_height += 3 * ddy;
 advanced_format_section_height += 3 * ddy + 1;

 ResizeDialogs(dy + 2 * ddy);
 InvalidateRect(hDlg, ((void*)0), TRUE);
}
