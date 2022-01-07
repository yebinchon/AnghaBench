
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uses_minint; } ;
typedef int BOOL ;


 int BST_CHECKED ;
 int BST_UNCHECKED ;
 scalar_t__ BT_IMAGE ;
 int CheckDlgButton (int ,int ,int ) ;
 int ComboBox_GetCurSel (int ) ;
 int ComboBox_SetCurSel (int ,int) ;
 scalar_t__ FS_NTFS ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ HAS_BOOTMGR (TYPE_1__) ;
 scalar_t__ HAS_GRUB (TYPE_1__) ;
 scalar_t__ HAS_WINPE (TYPE_1__) ;
 int IDC_IMAGE_OPTION ;
 int IDC_RUFUS_MBR ;
 int IGNORE_RETVAL (int ) ;
 int IMOP_WINTOGO ;
 scalar_t__ IsWindowEnabled (int ) ;
 scalar_t__ boot_type ;
 scalar_t__ fs_type ;
 int hDiskID ;
 int hMainDialog ;
 int image_options ;
 int * image_path ;
 TYPE_1__ img_report ;
 scalar_t__ mbr_selected_by_user ;
 int uMBRChecked ;

__attribute__((used)) static void SetMBRProps(void)
{
 BOOL needs_masquerading = HAS_WINPE(img_report) && (!img_report.uses_minint);

 if ((!mbr_selected_by_user) && ((image_path == ((void*)0)) || (boot_type != BT_IMAGE) || (fs_type != FS_NTFS) || HAS_GRUB(img_report) ||
  ((image_options & IMOP_WINTOGO) && (ComboBox_GetCurSel(GetDlgItem(hMainDialog, IDC_IMAGE_OPTION)) == 1)) )) {
  CheckDlgButton(hMainDialog, IDC_RUFUS_MBR, BST_UNCHECKED);
  IGNORE_RETVAL(ComboBox_SetCurSel(hDiskID, 0));
  return;
 }

 uMBRChecked = (needs_masquerading || HAS_BOOTMGR(img_report) || mbr_selected_by_user)?BST_CHECKED:BST_UNCHECKED;
 if (IsWindowEnabled(GetDlgItem(hMainDialog, IDC_RUFUS_MBR)))
  CheckDlgButton(hMainDialog, IDC_RUFUS_MBR, uMBRChecked);
 IGNORE_RETVAL(ComboBox_SetCurSel(hDiskID, needs_masquerading?1:0));
}
