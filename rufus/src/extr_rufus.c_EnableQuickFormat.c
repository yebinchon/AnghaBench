
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {scalar_t__ DiskSize; } ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int BST_CHECKED ;
 int BST_UNCHECKED ;
 scalar_t__ BT_IMAGE ;
 int CheckDlgButton (int ,int ,int) ;
 int EnableWindow (int ,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ FS_FAT32 ;
 scalar_t__ FS_REFS ;
 int GetDlgItem (int ,int ) ;
 int IDC_QUICK_FORMAT ;
 scalar_t__ IS_DD_ONLY (int ) ;
 int IsChecked (int ) ;
 int IsWindowEnabled (int ) ;
 scalar_t__ LARGE_FAT32_SIZE ;
 TYPE_1__ SelectedDrive ;
 scalar_t__ boot_type ;
 scalar_t__ force_large_fat32 ;
 scalar_t__ fs_type ;
 int hMainDialog ;
 int img_report ;

__attribute__((used)) static void EnableQuickFormat(BOOL enable, BOOL remove_checkboxes)
{
 static UINT checked, state = 0;
 HWND hCtrl = GetDlgItem(hMainDialog, IDC_QUICK_FORMAT);

 if ((boot_type == BT_IMAGE) && IS_DD_ONLY(img_report))
  enable = FALSE;


 if (((fs_type == FS_FAT32) && ((SelectedDrive.DiskSize > LARGE_FAT32_SIZE) || (force_large_fat32))) || (fs_type == FS_REFS)) {
  enable = FALSE;

  remove_checkboxes = FALSE;
  CheckDlgButton(hMainDialog, IDC_QUICK_FORMAT, BST_CHECKED);
 }

 if (remove_checkboxes) {
  if (!enable && (state != 1)) {
   checked = IsChecked(IDC_QUICK_FORMAT);
   CheckDlgButton(hMainDialog, IDC_QUICK_FORMAT, BST_UNCHECKED);
   state = 1;
  } else if (enable && !IsWindowEnabled(hCtrl) && (state != 2)) {
   if (state != 0)
    CheckDlgButton(hMainDialog, IDC_QUICK_FORMAT, checked);
   state = 2;
  }
 }
 EnableWindow(hCtrl, enable);
}
