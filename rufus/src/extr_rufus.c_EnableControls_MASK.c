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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_2__ {int /*<<< orphan*/  is_iso; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ BT_IMAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 scalar_t__ IDC_ABOUT ; 
 int /*<<< orphan*/  IDC_IMAGE_OPTION ; 
 scalar_t__ IDC_LANG ; 
 int /*<<< orphan*/  IDC_LIST_USB_HDD ; 
 scalar_t__ IDC_SETTINGS ; 
 int /*<<< orphan*/  IDS_CSM_HELP_TXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_ENABLEBUTTON ; 
 scalar_t__ boot_type ; 
 int /*<<< orphan*/  hAdvancedDeviceToolbar ; 
 int /*<<< orphan*/  hAdvancedFormatToolbar ; 
 int /*<<< orphan*/  hBootType ; 
 int /*<<< orphan*/  hClusterSize ; 
 int /*<<< orphan*/  hDeviceList ; 
 int /*<<< orphan*/  hFileSystem ; 
 int /*<<< orphan*/  hHashToolbar ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  hMultiToolbar ; 
 int /*<<< orphan*/  hPartitionScheme ; 
 int /*<<< orphan*/  hSaveToolbar ; 
 int /*<<< orphan*/  hSelectImage ; 
 int /*<<< orphan*/  hStart ; 
 int /*<<< orphan*/  hTargetSystem ; 
 int /*<<< orphan*/ * image_path ; 
 TYPE_1__ img_report ; 
 int op_in_progress ; 
 int /*<<< orphan*/  uppercase_cancel ; 
 int /*<<< orphan*/  uppercase_close ; 

__attribute__((used)) static void FUNC6(BOOL enable, BOOL remove_checkboxes)
{
	op_in_progress = !enable;

	// The following only get disabled on format/checksum and otherwise remain enabled,
	// even if no device or image are selected
	FUNC2(hDeviceList, enable);
	FUNC2(hBootType, enable);
	FUNC2(hSelectImage, enable);
	FUNC2(FUNC3(hMainDialog, IDC_LIST_USB_HDD), enable);
	FUNC2(hAdvancedDeviceToolbar, enable);
	FUNC2(hAdvancedFormatToolbar, enable);
	FUNC4(hMultiToolbar, TB_ENABLEBUTTON, (WPARAM)IDC_LANG, (LPARAM)enable);
	FUNC4(hMultiToolbar, TB_ENABLEBUTTON, (WPARAM)IDC_ABOUT, (LPARAM)enable);
	FUNC4(hMultiToolbar, TB_ENABLEBUTTON, (WPARAM)IDC_SETTINGS, (LPARAM)enable);

	// Checksum button is enabled if an image has been selected
	FUNC2(hHashToolbar, enable && (boot_type == BT_IMAGE) && (image_path != NULL));

	// Toggle CLOSE/CANCEL
	FUNC5(hMainDialog, IDCANCEL, enable ? uppercase_close : uppercase_cancel);

	// Only enable the following controls if a device is active
	enable = (FUNC0(hDeviceList) < 0) ? FALSE : enable;
	FUNC2(FUNC3(hMainDialog, IDC_IMAGE_OPTION), enable);
	FUNC2(hSaveToolbar, enable);

	// Enable or disable the Start button and the other boot options
	enable = ((boot_type == BT_IMAGE) && (image_path == NULL)) ? FALSE : enable;
	FUNC2(hStart, enable);
	FUNC1(enable, remove_checkboxes);

	// Finally, only enable the half-size dropdowns if we aren't dealing with a pure DD image
	enable = ((boot_type == BT_IMAGE) && (image_path != NULL) && (!img_report.is_iso)) ? FALSE : enable;
	FUNC2(hPartitionScheme, enable);
	FUNC2(hTargetSystem, enable);
	FUNC2(FUNC3(hMainDialog, IDS_CSM_HELP_TXT), enable);
	FUNC2(hFileSystem, enable);
	FUNC2(hClusterSize, enable);
}