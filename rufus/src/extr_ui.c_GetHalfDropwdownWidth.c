
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cx; } ;
struct TYPE_4__ {scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef int HWND ;


 int GetDlgItem (int ,int ) ;
 TYPE_3__ GetTextSize (int ,char*) ;
 scalar_t__ GetTextWidth (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDC_BAD_BLOCKS ;
 int IDC_CLUSTER_SIZE ;
 int IDC_PARTITION_TYPE ;
 int IDC_RUFUS_MBR ;
 int IDC_TARGET_SYSTEM ;
 unsigned int MAX_CLUSTER_SIZES ;
 unsigned int MSG_026 ;
 int MSG_030 ;
 unsigned int MSG_031 ;
 unsigned int MSG_033 ;
 int MSG_034 ;
 int MSG_035 ;
 int MSG_087 ;
 int MapWindowPoints (int *,int ,int *,int) ;
 scalar_t__ ddw ;
 int * flash_type ;
 scalar_t__ hw ;
 char* lmprintf (unsigned int,...) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int safe_sprintf (char*,int,char*,unsigned int,char*) ;
 scalar_t__ sfd_name ;
 scalar_t__ sw ;

void GetHalfDropwdownWidth(HWND hDlg)
{
 RECT rc;
 unsigned int i, j, msg_id;
 char tmp[256];


 GetWindowRect(GetDlgItem(hDlg, IDC_PARTITION_TYPE), &rc);
 MapWindowPoints(((void*)0), hDlg, (POINT*)&rc, 2);
 hw = rc.right - rc.left - ddw;


 hw = max(hw, GetTextSize(GetDlgItem(hDlg, IDC_PARTITION_TYPE), (char*)sfd_name).cx);


 for (i = 512, j = 1, msg_id = MSG_026; j<MAX_CLUSTER_SIZES; i <<= 1, j++) {
  if (i > 8192) {
   i /= 1024;
   msg_id++;
  }
  safe_sprintf(tmp, 64, "%d %s", i, lmprintf(msg_id));
  hw = max(hw, GetTextSize(GetDlgItem(hDlg, IDC_CLUSTER_SIZE), lmprintf(MSG_030, tmp)).cx);
 }


 for (msg_id = MSG_031; msg_id <= MSG_033; msg_id++)
  hw = max(hw, GetTextSize(GetDlgItem(hDlg, IDC_TARGET_SYSTEM), lmprintf(msg_id)).cx);


 for (i = 1; i <= 5; i++) {
  char* msg = (i == 1) ? lmprintf(MSG_034, 1) : lmprintf(MSG_035, (i == 2) ? 2 : 4, (i == 2) ? "" : lmprintf(MSG_087, flash_type[i - 3]));
  hw = max(hw, GetTextSize(GetDlgItem(hDlg, IDC_TARGET_SYSTEM), msg).cx);
 }



 hw = max(hw, GetTextWidth(hDlg, IDC_RUFUS_MBR) - sw);
 hw = max(hw, GetTextWidth(hDlg, IDC_BAD_BLOCKS) - sw);


 hw += ddw;
}
