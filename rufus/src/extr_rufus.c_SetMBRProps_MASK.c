#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  uses_minint; } ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  BST_UNCHECKED ; 
 scalar_t__ BT_IMAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FS_NTFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 
 scalar_t__ FUNC6 (TYPE_1__) ; 
 int /*<<< orphan*/  IDC_IMAGE_OPTION ; 
 int /*<<< orphan*/  IDC_RUFUS_MBR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int IMOP_WINTOGO ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ boot_type ; 
 scalar_t__ fs_type ; 
 int /*<<< orphan*/  hDiskID ; 
 int /*<<< orphan*/  hMainDialog ; 
 int image_options ; 
 int /*<<< orphan*/ * image_path ; 
 TYPE_1__ img_report ; 
 scalar_t__ mbr_selected_by_user ; 
 int /*<<< orphan*/  uMBRChecked ; 

__attribute__((used)) static void FUNC9(void)
{
	BOOL needs_masquerading = FUNC6(img_report) && (!img_report.uses_minint);

	if ((!mbr_selected_by_user) && ((image_path == NULL) || (boot_type != BT_IMAGE) || (fs_type != FS_NTFS) || FUNC5(img_report) ||
		((image_options & IMOP_WINTOGO) && (FUNC1(FUNC3(hMainDialog, IDC_IMAGE_OPTION)) == 1)) )) {
		FUNC0(hMainDialog, IDC_RUFUS_MBR, BST_UNCHECKED);
		FUNC7(FUNC2(hDiskID, 0));
		return;
	}

	uMBRChecked = (needs_masquerading || FUNC4(img_report) || mbr_selected_by_user)?BST_CHECKED:BST_UNCHECKED;
	if (FUNC8(FUNC3(hMainDialog, IDC_RUFUS_MBR)))
		FUNC0(hMainDialog, IDC_RUFUS_MBR, uMBRChecked);
	FUNC7(FUNC2(hDiskID, needs_masquerading?1:0));
}