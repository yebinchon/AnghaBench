#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int DiskSize; int PartitionStyle; } ;
struct TYPE_7__ {scalar_t__ is_bootable_img; scalar_t__ has_efi; scalar_t__ is_iso; } ;
typedef  int BOOL ;

/* Variables and functions */
#define  BT_FREEDOS 137 
#define  BT_GRUB2 136 
#define  BT_GRUB4DOS 135 
#define  BT_IMAGE 134 
#define  BT_MSDOS 133 
#define  BT_NON_BOOTABLE 132 
#define  BT_REACTOS 131 
#define  BT_SYSLINUX_V4 130 
#define  BT_SYSLINUX_V6 129 
#define  BT_UEFI_NTFS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__) ; 
 scalar_t__ FUNC8 (TYPE_1__) ; 
 int /*<<< orphan*/  IDC_IMAGE_OPTION ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__) ; 
 scalar_t__ FUNC11 (TYPE_1__) ; 
 int /*<<< orphan*/  MSG_031 ; 
 int /*<<< orphan*/  MSG_032 ; 
 int /*<<< orphan*/  MSG_033 ; 
 size_t PARTITION_STYLE_GPT ; 
 size_t PARTITION_STYLE_MBR ; 
 size_t PARTITION_STYLE_SFD ; 
 TYPE_2__ SelectedDrive ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int TB ; 
 int TRUE ; 
 size_t TT_BIOS ; 
 size_t TT_UEFI ; 
 int /*<<< orphan*/  UM_UPDATE_CSM_TOOLTIP ; 
 scalar_t__ allow_dual_uefi_bios ; 
 int boot_type ; 
 int /*<<< orphan*/  hBootType ; 
 int /*<<< orphan*/  hDeviceList ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  hPartitionScheme ; 
 int /*<<< orphan*/  hTargetSystem ; 
 int has_uefi_csm ; 
 int /*<<< orphan*/ * image_path ; 
 TYPE_1__ img_report ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 size_t partition_type ; 
 size_t selected_pt ; 
 char* sfd_name ; 
 int target_type ; 

__attribute__((used)) static void FUNC15(BOOL only_target)
{
	//                                   MBR,  GPT,  SFD
	BOOL allowed_partition_scheme[3] = { TRUE, TRUE, FALSE };
	//                                   BIOS, UEFI, DUAL
	BOOL allowed_target_system[3]    = { TRUE, TRUE, FALSE };
	BOOL is_windows_to_go_selected;

	if (!only_target)
		FUNC9(FUNC3(hPartitionScheme));
	FUNC9(FUNC3(hTargetSystem));

	boot_type = (int)FUNC2(hBootType, FUNC1(hBootType));
	is_windows_to_go_selected = (boot_type == BT_IMAGE) && (image_path != NULL) && FUNC8(img_report) &&
		(FUNC1(FUNC6(hMainDialog, IDC_IMAGE_OPTION)) == 1);
	// If no device is selected, don't populate anything
	if (FUNC1(hDeviceList) < 0)
		return;
	switch (boot_type) {
	case BT_NON_BOOTABLE:
		allowed_partition_scheme[PARTITION_STYLE_SFD] = TRUE;
		allowed_target_system[0] = FALSE;
		allowed_target_system[1] = FALSE;
		allowed_target_system[2] = TRUE;
		break;
	case BT_IMAGE:
		if (image_path == NULL)
			break;
		// Check if image is EFI bootable
		if (!FUNC11(img_report)) {
			allowed_partition_scheme[PARTITION_STYLE_GPT] = FALSE;
			allowed_target_system[1] = FALSE;
			break;
		}
		// Image is EFI bootable => set dual BIOS + UEFI and so on...
		if (FUNC10(img_report)) {
			if (!FUNC7(img_report) || allow_dual_uefi_bios || is_windows_to_go_selected) {
				allowed_target_system[0] = FALSE;
				allowed_target_system[1] = TRUE;
				allowed_target_system[2] = TRUE;
			}
		} else {
			allowed_target_system[0] = FALSE;
		}
		break;
	case BT_MSDOS:
	case BT_FREEDOS:
	case BT_SYSLINUX_V4:
	case BT_SYSLINUX_V6:
	case BT_REACTOS:
	case BT_GRUB4DOS:
	case BT_GRUB2:
		allowed_partition_scheme[PARTITION_STYLE_GPT] = FALSE;
		allowed_target_system[1] = FALSE;
		break;
	case BT_UEFI_NTFS:
		allowed_target_system[0] = FALSE;
		break;
	}

	if (!only_target) {
		// Override partition type selection to GPT for drives larger than 2TB
		if (SelectedDrive.DiskSize > 2 * TB)
			selected_pt = PARTITION_STYLE_GPT;
		// Try to reselect the current drive's partition scheme
		int preferred_pt = SelectedDrive.PartitionStyle;
		if (allowed_partition_scheme[PARTITION_STYLE_MBR]) 
			FUNC9(FUNC5(hPartitionScheme,
				FUNC0(hPartitionScheme, "MBR"), PARTITION_STYLE_MBR));
		if (allowed_partition_scheme[PARTITION_STYLE_GPT])
			FUNC9(FUNC5(hPartitionScheme,
				FUNC0(hPartitionScheme, "GPT"), PARTITION_STYLE_GPT));
		if (allowed_partition_scheme[PARTITION_STYLE_SFD])
			FUNC9(FUNC5(hPartitionScheme,
				FUNC0(hPartitionScheme, sfd_name), PARTITION_STYLE_SFD));
		// Override the partition scheme according to the current 
		if (boot_type == BT_NON_BOOTABLE)
			preferred_pt = (selected_pt >= 0) ? selected_pt : PARTITION_STYLE_MBR;
		else if (boot_type == BT_UEFI_NTFS)
			preferred_pt = (selected_pt >= 0) ? selected_pt : PARTITION_STYLE_GPT;
		else if ((boot_type == BT_IMAGE) && (image_path != NULL) && (img_report.is_iso)) {
			if (FUNC7(img_report) && img_report.has_efi)
				preferred_pt = allow_dual_uefi_bios? PARTITION_STYLE_MBR :
					((selected_pt >= 0) ? selected_pt : PARTITION_STYLE_GPT);
			if (img_report.is_bootable_img)
				preferred_pt = (selected_pt >= 0) ? selected_pt : PARTITION_STYLE_MBR;
		}
		FUNC13(hPartitionScheme, preferred_pt);
		partition_type = (int)FUNC2(hPartitionScheme, FUNC1(hPartitionScheme));
	}

	has_uefi_csm = FALSE;
	if (allowed_target_system[0] && (partition_type != PARTITION_STYLE_GPT)) {
		FUNC9(FUNC5(hTargetSystem,
			FUNC0(hTargetSystem, FUNC14(MSG_031)), TT_BIOS));
		has_uefi_csm = TRUE;
	}
	if (allowed_target_system[1] && !((partition_type == PARTITION_STYLE_MBR) && (boot_type == BT_IMAGE) && FUNC10(img_report) && FUNC11(img_report)) )
		FUNC9(FUNC5(hTargetSystem,
			FUNC0(hTargetSystem, FUNC14(MSG_032)), TT_UEFI));
	if (allowed_target_system[2] && ((partition_type != PARTITION_STYLE_GPT) || (boot_type == BT_NON_BOOTABLE)))
		FUNC9(FUNC5(hTargetSystem,
			FUNC0(hTargetSystem, FUNC14(MSG_033)), TT_BIOS));
	FUNC9(FUNC4(hTargetSystem, 0));
	target_type = (int)FUNC2(hTargetSystem, FUNC1(hTargetSystem));
	// Can't update a tooltip from a thread, so we send a message instead
	FUNC12(hMainDialog, UM_UPDATE_CSM_TOOLTIP, 0, 0);
}