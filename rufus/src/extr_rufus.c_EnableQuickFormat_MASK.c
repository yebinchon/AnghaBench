#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_2__ {scalar_t__ DiskSize; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BST_CHECKED ; 
 int BST_UNCHECKED ; 
 scalar_t__ BT_IMAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FS_FAT32 ; 
 scalar_t__ FS_REFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_QUICK_FORMAT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ LARGE_FAT32_SIZE ; 
 TYPE_1__ SelectedDrive ; 
 scalar_t__ boot_type ; 
 scalar_t__ force_large_fat32 ; 
 scalar_t__ fs_type ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  img_report ; 

__attribute__((used)) static void FUNC6(BOOL enable, BOOL remove_checkboxes)
{
	static UINT checked, state = 0;
	HWND hCtrl = FUNC2(hMainDialog, IDC_QUICK_FORMAT);

	if ((boot_type == BT_IMAGE) && FUNC3(img_report))
		enable = FALSE;

	// Disable/restore the quick format control depending on large FAT32 or ReFS
	if (((fs_type == FS_FAT32) && ((SelectedDrive.DiskSize > LARGE_FAT32_SIZE) || (force_large_fat32))) || (fs_type == FS_REFS)) {
		enable = FALSE;
		// Quick Format is the only option for the above
		remove_checkboxes = FALSE;
		FUNC0(hMainDialog, IDC_QUICK_FORMAT, BST_CHECKED);
	}

	if (remove_checkboxes) {
		if (!enable && (state != 1)) {
			checked = FUNC4(IDC_QUICK_FORMAT);
			FUNC0(hMainDialog, IDC_QUICK_FORMAT, BST_UNCHECKED);
			state = 1;
		} else if (enable && !FUNC5(hCtrl) && (state != 2)) {
			if (state != 0)
				FUNC0(hMainDialog, IDC_QUICK_FORMAT, checked);
			state = 2;
		}
	}
	FUNC1(hCtrl, enable);
}