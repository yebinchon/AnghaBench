#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  is_iso; scalar_t__ is_bootable_img; } ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ BT_IMAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__) ; 
 int /*<<< orphan*/  IDC_BAD_BLOCKS ; 
 int /*<<< orphan*/  IDC_IMAGE_OPTION ; 
 int /*<<< orphan*/  IDC_LABEL ; 
 int /*<<< orphan*/  IDC_NB_PASSES ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_SIZE ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_SLIDER ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_UNITS ; 
 scalar_t__ FUNC7 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int TRUE ; 
 scalar_t__ boot_type ; 
 int /*<<< orphan*/  hDeviceList ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/ * image_path ; 
 TYPE_1__ img_report ; 
 scalar_t__ persistence_size ; 

__attribute__((used)) static void FUNC9(BOOL enable, BOOL remove_checkboxes)
{
	BOOL actual_enable_bb, actual_enable = enable;

	// If no device is selected, don't enable anything
	if (FUNC0(hDeviceList) < 0)
		actual_enable = FALSE;
	// If boot selection is set to image, but no image is currently selected, don't enable anything
	if ((boot_type == BT_IMAGE) && (image_path == NULL))
		actual_enable = FALSE;
	actual_enable_bb = actual_enable;
	// If we are dealing with a pure DD image, remove all options except Bad Blocks check
	if ((boot_type == BT_IMAGE) && (img_report.is_bootable_img) && (!img_report.is_iso))
		actual_enable = FALSE;

	FUNC4(FUNC5(hMainDialog, IDC_IMAGE_OPTION), actual_enable);
	FUNC4(FUNC5(hMainDialog, IDC_PERSISTENCE_SLIDER), actual_enable);
	// Make sure we set the range if we have persistence
	if ((image_path != NULL) && FUNC6(img_report))
		FUNC8();
	FUNC4(FUNC5(hMainDialog, IDC_PERSISTENCE_SIZE), (persistence_size != 0) && actual_enable);
	FUNC4(FUNC5(hMainDialog, IDC_PERSISTENCE_UNITS), (persistence_size != 0) && actual_enable);
	FUNC2(actual_enable, remove_checkboxes);

	FUNC4(FUNC5(hMainDialog, IDC_LABEL), actual_enable);
	if (boot_type == BT_IMAGE) {
		if (FUNC7(img_report))
			remove_checkboxes = TRUE;
		else if (image_path == NULL)
			remove_checkboxes = FALSE;
	}
	FUNC3(actual_enable, remove_checkboxes);
	FUNC1(actual_enable, remove_checkboxes);
	FUNC4(FUNC5(hMainDialog, IDC_BAD_BLOCKS), actual_enable_bb);
	FUNC4(FUNC5(hMainDialog, IDC_NB_PASSES), actual_enable_bb);
}