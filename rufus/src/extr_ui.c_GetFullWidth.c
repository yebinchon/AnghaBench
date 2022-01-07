
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cx; } ;
struct TYPE_5__ {int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int HWND ;


 int ARRAYSIZE (int *) ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 TYPE_3__ GetTextSize (int ,int ) ;
 int GetTextWidth (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDC_BOOT_SELECTION ;
 int IDC_IMAGE_OPTION ;
 int IDS_DEVICE_TXT ;
 int MSG_117 ;
 int MSG_118 ;
 int MSG_279 ;
 int MSG_280 ;
 int MSG_281 ;
 int MapWindowPoints (int *,int ,int *,int) ;
 int bsw ;
 int bw ;
 int dbw ;
 int ddw ;
 int * full_width_checkboxes ;
 int fw ;
 int hBootType ;
 int hw ;
 int lmprintf (int ,...) ;
 int max (int,int) ;
 int sbw ;
 int ssw ;
 int sw ;

void GetFullWidth(HWND hDlg)
{
 RECT rc;
 int i;


 GetWindowRect(hDlg, &rc);
 dbw = rc.right - rc.left;
 GetClientRect(hDlg, &rc);
 dbw -= rc.right - rc.left;


 GetWindowRect(GetDlgItem(hDlg, IDC_BOOT_SELECTION), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);

 bsw = max(rc.right - rc.left, GetTextSize(hBootType, lmprintf(MSG_279)).cx + ddw);
 bsw = max(bsw, GetTextSize(hBootType, lmprintf(MSG_281, lmprintf(MSG_280))).cx + ddw);


 GetWindowRect(GetDlgItem(hDlg, IDS_DEVICE_TXT), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 fw = rc.right - rc.left - ddw;


 fw = max(fw, GetTextSize(GetDlgItem(hDlg, IDC_IMAGE_OPTION), lmprintf(MSG_117)).cx);
 fw = max(fw, GetTextSize(GetDlgItem(hDlg, IDC_IMAGE_OPTION), lmprintf(MSG_118)).cx);


 for (i = 0; i<ARRAYSIZE(full_width_checkboxes); i++)
  fw = max(fw, GetTextWidth(hDlg, full_width_checkboxes[i]));


 fw += ddw;


 fw = max(fw, 2 * hw + sw);



 bw = max(bw, (fw - 2 * ssw - sw) / 4);

 bw = max(bw, (bsw + sbw - sw) / 3);


 bw = max(bw, (hw / 2) - ssw);


 hw = max(hw, 2 * bw + ssw);
 fw = max(fw, 2 * hw + sw);

 bsw = max(bsw, fw - bw - 2 * ssw - sbw);


}
