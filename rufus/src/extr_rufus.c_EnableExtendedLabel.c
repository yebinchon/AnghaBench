
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int BST_UNCHECKED ;
 scalar_t__ BT_IMAGE ;
 int CheckDlgButton (int ,int ,int) ;
 int EnableWindow (int ,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ FS_EXT2 ;
 int GetDlgItem (int ,int ) ;
 int IDC_EXTENDED_LABEL ;
 scalar_t__ IS_DD_ONLY (int ) ;
 int IsChecked (int ) ;
 int IsWindowEnabled (int ) ;
 scalar_t__ boot_type ;
 scalar_t__ fs_type ;
 int hMainDialog ;
 int img_report ;

__attribute__((used)) static void EnableExtendedLabel(BOOL enable, BOOL remove_checkboxes)
{
 static UINT checked, state = 0;
 HWND hCtrl = GetDlgItem(hMainDialog, IDC_EXTENDED_LABEL);

 if ((fs_type >= FS_EXT2) || ((boot_type == BT_IMAGE) && IS_DD_ONLY(img_report)))
  enable = FALSE;

 if (remove_checkboxes) {
  if (!enable && (state != 1)) {
   checked = IsChecked(IDC_EXTENDED_LABEL);
   CheckDlgButton(hMainDialog, IDC_EXTENDED_LABEL, BST_UNCHECKED);
   state = 1;
  } else if (enable && !IsWindowEnabled(hCtrl) && (state != 2)) {
   if (state != 0)
    CheckDlgButton(hMainDialog, IDC_EXTENDED_LABEL, checked);
   state = 2;
  }
 }
 EnableWindow(hCtrl, enable);
}
