#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_4__ {int DiskSize; } ;
struct TYPE_3__ {int projected_size; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_SLIDER ; 
 int /*<<< orphan*/  IDC_PERSISTENCE_UNITS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MB ; 
 scalar_t__ MSG_022 ; 
 TYPE_2__ SelectedDrive ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  TBM_SETPOS ; 
 int /*<<< orphan*/  TBM_SETRANGEMAX ; 
 int /*<<< orphan*/  TBM_SETRANGEMIN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  hDeviceList ; 
 int /*<<< orphan*/  hMainDialog ; 
 TYPE_1__ img_report ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int,int) ; 
 int persistence_size ; 
 int persistence_unit_selection ; 

void FUNC11(void)
{
	int i, proposed_unit_selection = 0;
	LONGLONG base_unit = MB;
	HWND hCtrl;
	uint64_t max = 0, pos = 0;

	if (FUNC1(hDeviceList) >= 0) {
		max = SelectedDrive.DiskSize - img_report.projected_size;
		persistence_size = FUNC10(persistence_size, max);
		pos = persistence_size;

		// Reset the the Persistence Units dropdown
		hCtrl = FUNC5(hMainDialog, IDC_PERSISTENCE_UNITS);
		FUNC6(FUNC2(hCtrl));
		for (i = 0; i < 3; i++) {
			FUNC6(FUNC4(hCtrl, FUNC0(hCtrl, FUNC9(MSG_022 + i)), i));
			// If we have more than 7 discrete positions, set this unit as our base
			if (SelectedDrive.DiskSize > 7 * base_unit)
				proposed_unit_selection = i;
			base_unit *= 1024;
			// Don't allow a base unit unless the drive is at least twice the size of that unit
			if (SelectedDrive.DiskSize < 2 * base_unit)
				break;
		}
		if (persistence_unit_selection < 0)
			persistence_unit_selection = proposed_unit_selection;

		FUNC6(FUNC3(hCtrl, persistence_unit_selection));
		pos /= MB;
		max /= MB;
		for (i = 0; i < persistence_unit_selection; i++) {
			pos /= 1024;
			max /= 1024;
		}
	}

	hCtrl = FUNC5(hMainDialog, IDC_PERSISTENCE_SLIDER);
	// Wow! Unless you set *all* these redraw WPARAMs to true, the one from
	// TBM_SETPOS gets completely ignored if the value is zero!
	FUNC7(hCtrl, TBM_SETRANGEMIN, (WPARAM)TRUE, (LPARAM)0);
	FUNC7(hCtrl, TBM_SETRANGEMAX, (WPARAM)TRUE, (LPARAM)max);
	FUNC7(hCtrl, TBM_SETPOS, (WPARAM)TRUE, (LPARAM)pos);

	FUNC8(pos);
}