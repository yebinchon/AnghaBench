
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {scalar_t__ has_4GB_file; } ;
typedef int BOOL ;


 scalar_t__ BT_IMAGE ;
 int CBN_SELCHANGE_INTERNAL ;
 int ComboBox_GetCount (int ) ;
 int ComboBox_GetCurSel (int ) ;
 scalar_t__ ComboBox_GetItemData (int ,int) ;
 int ComboBox_SetCurSel (int ,int) ;
 int FS_FAT16 ;
 int FS_FAT32 ;
 int FS_NTFS ;
 int FS_UNKNOWN ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ HAS_BOOTMGR (TYPE_1__) ;
 scalar_t__ HAS_KOLIBRIOS (TYPE_1__) ;
 scalar_t__ HAS_REACTOS (TYPE_1__) ;
 scalar_t__ HAS_SYSLINUX (TYPE_1__) ;
 scalar_t__ HAS_WINPE (TYPE_1__) ;
 scalar_t__ HAS_WINTOGO (TYPE_1__) ;
 int IDC_FILE_SYSTEM ;
 int IDC_IMAGE_OPTION ;
 int IGNORE_RETVAL (int ) ;
 int IMOP_WINTOGO ;
 scalar_t__ IS_EFI_BOOTABLE (TYPE_1__) ;
 int SendMessage (int ,int ,int,int) ;
 scalar_t__ TT_UEFI ;
 int WM_COMMAND ;
 scalar_t__ boot_type ;
 int hFileSystem ;
 int hMainDialog ;
 int image_options ;
 int * image_path ;
 TYPE_1__ img_report ;
 int preselected_fs ;
 int selected_fs ;
 scalar_t__ target_type ;

__attribute__((used)) static void SetFSFromISO(void)
{
 int i, fs_tmp, preferred_fs = FS_UNKNOWN;
 uint32_t fs_mask = FS_FAT32 | FS_NTFS;
 BOOL windows_to_go = (image_options & IMOP_WINTOGO) && (boot_type == BT_IMAGE) && HAS_WINTOGO(img_report) &&
  (ComboBox_GetCurSel(GetDlgItem(hMainDialog, IDC_IMAGE_OPTION)) == 1);

 if (image_path == ((void*)0))
  return;


 for (i=0; i<ComboBox_GetCount(hFileSystem); i++) {
  fs_tmp = (int)ComboBox_GetItemData(hFileSystem, i);
  fs_mask |= 1<<fs_tmp;
 }

 if ((preferred_fs == FS_UNKNOWN) && (preselected_fs != FS_UNKNOWN)) {

  if (fs_mask & (1 << preselected_fs)) {
   preferred_fs = preselected_fs;
  }
 }

 if (preferred_fs == FS_UNKNOWN) {

  if ((HAS_SYSLINUX(img_report)) || (HAS_REACTOS(img_report)) || HAS_KOLIBRIOS(img_report) ||
   (IS_EFI_BOOTABLE(img_report) && (target_type == TT_UEFI) && (!windows_to_go))) {
   if (fs_mask & (1 << FS_FAT32)) {
    preferred_fs = FS_FAT32;
   } else if ((fs_mask & (1 << FS_FAT16)) && !HAS_KOLIBRIOS(img_report)) {
    preferred_fs = FS_FAT16;
   }
  } else if ((windows_to_go) || HAS_BOOTMGR(img_report) || HAS_WINPE(img_report)) {
   if (fs_mask & (1 << FS_NTFS)) {
    preferred_fs = FS_NTFS;
   }
  }
 }


 if (img_report.has_4GB_file && (fs_mask & (1 << FS_NTFS))) {
  preferred_fs = FS_NTFS;
 }


 for (i = 0; i < ComboBox_GetCount(hFileSystem); i++) {
  fs_tmp = (int)ComboBox_GetItemData(hFileSystem, i);
  if (fs_tmp == preferred_fs) {
   IGNORE_RETVAL(ComboBox_SetCurSel(hFileSystem, i));
   break;
  }
 }
 if (selected_fs == FS_UNKNOWN)
  selected_fs = preferred_fs;

 SendMessage(hMainDialog, WM_COMMAND, (CBN_SELCHANGE_INTERNAL<<16) | IDC_FILE_SYSTEM,
  ComboBox_GetCurSel(hFileSystem));
}
