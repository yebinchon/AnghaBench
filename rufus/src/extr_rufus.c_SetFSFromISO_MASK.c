#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {scalar_t__ has_4GB_file; } ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ BT_IMAGE ; 
 int CBN_SELCHANGE_INTERNAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FS_FAT16 ; 
 int FS_FAT32 ; 
 int FS_NTFS ; 
 int FS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 
 scalar_t__ FUNC6 (TYPE_1__) ; 
 scalar_t__ FUNC7 (TYPE_1__) ; 
 scalar_t__ FUNC8 (TYPE_1__) ; 
 scalar_t__ FUNC9 (TYPE_1__) ; 
 scalar_t__ FUNC10 (TYPE_1__) ; 
 int IDC_FILE_SYSTEM ; 
 int /*<<< orphan*/  IDC_IMAGE_OPTION ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int IMOP_WINTOGO ; 
 scalar_t__ FUNC12 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ TT_UEFI ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 scalar_t__ boot_type ; 
 int /*<<< orphan*/  hFileSystem ; 
 int /*<<< orphan*/  hMainDialog ; 
 int image_options ; 
 int /*<<< orphan*/ * image_path ; 
 TYPE_1__ img_report ; 
 int preselected_fs ; 
 int selected_fs ; 
 scalar_t__ target_type ; 

__attribute__((used)) static void FUNC14(void)
{
	int i, fs_tmp, preferred_fs = FS_UNKNOWN;
	uint32_t fs_mask = FS_FAT32 | FS_NTFS;
	BOOL windows_to_go = (image_options & IMOP_WINTOGO) && (boot_type == BT_IMAGE) && FUNC10(img_report) &&
		(FUNC1(FUNC4(hMainDialog, IDC_IMAGE_OPTION)) == 1);

	if (image_path == NULL)
		return;

	// Create a mask of all the FS's available
	for (i=0; i<FUNC0(hFileSystem); i++) {
		fs_tmp = (int)FUNC2(hFileSystem, i);
		fs_mask |= 1<<fs_tmp;
	}

	if ((preferred_fs == FS_UNKNOWN) && (preselected_fs != FS_UNKNOWN)) {
		// If the FS requested from the command line is valid use it
		if (fs_mask & (1 << preselected_fs)) {
			preferred_fs = preselected_fs;
		}
	}

	if (preferred_fs == FS_UNKNOWN) {
		// Syslinux and EFI have precedence over bootmgr (unless the user selected BIOS as target type)
		if ((FUNC8(img_report)) || (FUNC7(img_report)) || FUNC6(img_report) ||
			(FUNC12(img_report) && (target_type == TT_UEFI) && (!windows_to_go))) {
			if (fs_mask & (1 << FS_FAT32)) {
				preferred_fs = FS_FAT32;
			} else if ((fs_mask & (1 << FS_FAT16)) && !FUNC6(img_report)) {
				preferred_fs = FS_FAT16;
			}
		} else if ((windows_to_go) || FUNC5(img_report) || FUNC9(img_report)) {
			if (fs_mask & (1 << FS_NTFS)) {
				preferred_fs = FS_NTFS;
			}
		}
	}

	// The presence of a 4GB file forces the use of NTFS as default FS if available
	if (img_report.has_4GB_file && (fs_mask & (1 << FS_NTFS))) {
		preferred_fs = FS_NTFS;
	}

	// Try to select the FS
	for (i = 0; i < FUNC0(hFileSystem); i++) {
		fs_tmp = (int)FUNC2(hFileSystem, i);
		if (fs_tmp == preferred_fs) {
			FUNC11(FUNC3(hFileSystem, i));
			break;
		}
	}
	if (selected_fs == FS_UNKNOWN)
		selected_fs = preferred_fs;

	FUNC13(hMainDialog, WM_COMMAND, (CBN_SELCHANGE_INTERNAL<<16) | IDC_FILE_SYSTEM,
		FUNC1(hFileSystem));
}