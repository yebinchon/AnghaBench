#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BST_UNCHECKED ; 
 scalar_t__ BT_IMAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FS_EXT2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_EXTENDED_LABEL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ boot_type ; 
 scalar_t__ fs_type ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  img_report ; 

__attribute__((used)) static void FUNC6(BOOL enable, BOOL remove_checkboxes)
{
	static UINT checked, state = 0;
	HWND hCtrl = FUNC2(hMainDialog, IDC_EXTENDED_LABEL);

	if ((fs_type >= FS_EXT2) || ((boot_type == BT_IMAGE) && FUNC3(img_report)))
		enable = FALSE;

	if (remove_checkboxes) {
		if (!enable && (state != 1)) {
			checked = FUNC4(IDC_EXTENDED_LABEL);
			FUNC0(hMainDialog, IDC_EXTENDED_LABEL, BST_UNCHECKED);
			state = 1;
		} else if (enable && !FUNC5(hCtrl) && (state != 2)) {
			if (state != 0)
				FUNC0(hMainDialog, IDC_EXTENDED_LABEL, checked);
			state = 2;
		}
	}
	FUNC1(hCtrl, enable);
}