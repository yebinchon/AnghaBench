
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int DiskSize; int PartitionStyle; } ;
struct TYPE_7__ {scalar_t__ is_bootable_img; scalar_t__ has_efi; scalar_t__ is_iso; } ;
typedef int BOOL ;
 int ComboBox_AddStringU (int ,char*) ;
 int ComboBox_GetCurSel (int ) ;
 scalar_t__ ComboBox_GetItemData (int ,int) ;
 int ComboBox_ResetContent (int ) ;
 int ComboBox_SetCurSel (int ,int ) ;
 int ComboBox_SetItemData (int ,int ,size_t) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ HAS_WINDOWS (TYPE_1__) ;
 scalar_t__ HAS_WINTOGO (TYPE_1__) ;
 int IDC_IMAGE_OPTION ;
 int IGNORE_RETVAL (int ) ;
 scalar_t__ IS_BIOS_BOOTABLE (TYPE_1__) ;
 scalar_t__ IS_EFI_BOOTABLE (TYPE_1__) ;
 int MSG_031 ;
 int MSG_032 ;
 int MSG_033 ;
 size_t PARTITION_STYLE_GPT ;
 size_t PARTITION_STYLE_MBR ;
 size_t PARTITION_STYLE_SFD ;
 TYPE_2__ SelectedDrive ;
 int SendMessage (int ,int ,int ,int ) ;
 int SetComboEntry (int ,int) ;
 int TB ;
 int TRUE ;
 size_t TT_BIOS ;
 size_t TT_UEFI ;
 int UM_UPDATE_CSM_TOOLTIP ;
 scalar_t__ allow_dual_uefi_bios ;
 int boot_type ;
 int hBootType ;
 int hDeviceList ;
 int hMainDialog ;
 int hPartitionScheme ;
 int hTargetSystem ;
 int has_uefi_csm ;
 int * image_path ;
 TYPE_1__ img_report ;
 char* lmprintf (int ) ;
 size_t partition_type ;
 size_t selected_pt ;
 char* sfd_name ;
 int target_type ;

__attribute__((used)) static void SetPartitionSchemeAndTargetSystem(BOOL only_target)
{

 BOOL allowed_partition_scheme[3] = { TRUE, TRUE, FALSE };

 BOOL allowed_target_system[3] = { TRUE, TRUE, FALSE };
 BOOL is_windows_to_go_selected;

 if (!only_target)
  IGNORE_RETVAL(ComboBox_ResetContent(hPartitionScheme));
 IGNORE_RETVAL(ComboBox_ResetContent(hTargetSystem));

 boot_type = (int)ComboBox_GetItemData(hBootType, ComboBox_GetCurSel(hBootType));
 is_windows_to_go_selected = (boot_type == 134) && (image_path != ((void*)0)) && HAS_WINTOGO(img_report) &&
  (ComboBox_GetCurSel(GetDlgItem(hMainDialog, IDC_IMAGE_OPTION)) == 1);

 if (ComboBox_GetCurSel(hDeviceList) < 0)
  return;
 switch (boot_type) {
 case 132:
  allowed_partition_scheme[PARTITION_STYLE_SFD] = TRUE;
  allowed_target_system[0] = FALSE;
  allowed_target_system[1] = FALSE;
  allowed_target_system[2] = TRUE;
  break;
 case 134:
  if (image_path == ((void*)0))
   break;

  if (!IS_EFI_BOOTABLE(img_report)) {
   allowed_partition_scheme[PARTITION_STYLE_GPT] = FALSE;
   allowed_target_system[1] = FALSE;
   break;
  }

  if (IS_BIOS_BOOTABLE(img_report)) {
   if (!HAS_WINDOWS(img_report) || allow_dual_uefi_bios || is_windows_to_go_selected) {
    allowed_target_system[0] = FALSE;
    allowed_target_system[1] = TRUE;
    allowed_target_system[2] = TRUE;
   }
  } else {
   allowed_target_system[0] = FALSE;
  }
  break;
 case 133:
 case 137:
 case 130:
 case 129:
 case 131:
 case 135:
 case 136:
  allowed_partition_scheme[PARTITION_STYLE_GPT] = FALSE;
  allowed_target_system[1] = FALSE;
  break;
 case 128:
  allowed_target_system[0] = FALSE;
  break;
 }

 if (!only_target) {

  if (SelectedDrive.DiskSize > 2 * TB)
   selected_pt = PARTITION_STYLE_GPT;

  int preferred_pt = SelectedDrive.PartitionStyle;
  if (allowed_partition_scheme[PARTITION_STYLE_MBR])
   IGNORE_RETVAL(ComboBox_SetItemData(hPartitionScheme,
    ComboBox_AddStringU(hPartitionScheme, "MBR"), PARTITION_STYLE_MBR));
  if (allowed_partition_scheme[PARTITION_STYLE_GPT])
   IGNORE_RETVAL(ComboBox_SetItemData(hPartitionScheme,
    ComboBox_AddStringU(hPartitionScheme, "GPT"), PARTITION_STYLE_GPT));
  if (allowed_partition_scheme[PARTITION_STYLE_SFD])
   IGNORE_RETVAL(ComboBox_SetItemData(hPartitionScheme,
    ComboBox_AddStringU(hPartitionScheme, sfd_name), PARTITION_STYLE_SFD));

  if (boot_type == 132)
   preferred_pt = (selected_pt >= 0) ? selected_pt : PARTITION_STYLE_MBR;
  else if (boot_type == 128)
   preferred_pt = (selected_pt >= 0) ? selected_pt : PARTITION_STYLE_GPT;
  else if ((boot_type == 134) && (image_path != ((void*)0)) && (img_report.is_iso)) {
   if (HAS_WINDOWS(img_report) && img_report.has_efi)
    preferred_pt = allow_dual_uefi_bios? PARTITION_STYLE_MBR :
     ((selected_pt >= 0) ? selected_pt : PARTITION_STYLE_GPT);
   if (img_report.is_bootable_img)
    preferred_pt = (selected_pt >= 0) ? selected_pt : PARTITION_STYLE_MBR;
  }
  SetComboEntry(hPartitionScheme, preferred_pt);
  partition_type = (int)ComboBox_GetItemData(hPartitionScheme, ComboBox_GetCurSel(hPartitionScheme));
 }

 has_uefi_csm = FALSE;
 if (allowed_target_system[0] && (partition_type != PARTITION_STYLE_GPT)) {
  IGNORE_RETVAL(ComboBox_SetItemData(hTargetSystem,
   ComboBox_AddStringU(hTargetSystem, lmprintf(MSG_031)), TT_BIOS));
  has_uefi_csm = TRUE;
 }
 if (allowed_target_system[1] && !((partition_type == PARTITION_STYLE_MBR) && (boot_type == 134) && IS_BIOS_BOOTABLE(img_report) && IS_EFI_BOOTABLE(img_report)) )
  IGNORE_RETVAL(ComboBox_SetItemData(hTargetSystem,
   ComboBox_AddStringU(hTargetSystem, lmprintf(MSG_032)), TT_UEFI));
 if (allowed_target_system[2] && ((partition_type != PARTITION_STYLE_GPT) || (boot_type == 132)))
  IGNORE_RETVAL(ComboBox_SetItemData(hTargetSystem,
   ComboBox_AddStringU(hTargetSystem, lmprintf(MSG_033)), TT_BIOS));
 IGNORE_RETVAL(ComboBox_SetCurSel(hTargetSystem, 0));
 target_type = (int)ComboBox_GetItemData(hTargetSystem, ComboBox_GetCurSel(hTargetSystem));

 SendMessage(hMainDialog, UM_UPDATE_CSM_TOOLTIP, 0, 0);
}
