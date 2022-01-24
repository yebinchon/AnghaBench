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
typedef  int WCHAR ;
struct TYPE_4__ {int* proposed_label; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_label; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_2__ SelectedDrive ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 TYPE_1__ img_report ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*) ; 
 int* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int*) ; 

__attribute__((used)) static void FUNC8(char* Label, BOOL bFAT)
{
	size_t i, j, k;
	BOOL found;
	WCHAR unauthorized[] = L"*?,;:/\\|+=<>[]\"";
	WCHAR to_underscore[] = L"\t.";
	WCHAR *wLabel = FUNC5(Label);

	if (wLabel == NULL)
		return;

	for (i = 0, k = 0; i < FUNC7(wLabel); i++) {
		if (bFAT) {	// NTFS does allows all the FAT unauthorized above
			found = FALSE;
			for (j = 0; j < FUNC7(unauthorized); j++) {
				if (wLabel[i] == unauthorized[j]) {
					found = TRUE;
					break;
				}
			}
			// A FAT label that contains extended chars will be rejected
			if (wLabel[i] >= 0x80) {
				wLabel[k++] = L'_';
				found = TRUE;
			}
			if (found)
				continue;
		}
		found = FALSE;
		for (j = 0; j < FUNC7(to_underscore); j++) {
			if (wLabel[i] == to_underscore[j]) {
				wLabel[k++] = '_';
				found = TRUE;
				break;
			}
		}
		if (found)
			continue;
		wLabel[k++] = bFAT ? FUNC3(wLabel[i]) : wLabel[i];
	}
	wLabel[k] = 0;

	if (bFAT) {
		if (FUNC7(wLabel) > 11)
			wLabel[11] = 0;
		for (i = 0, j = 0; wLabel[i] != 0 ; i++)
			if (wLabel[i] == '_')
				j++;
		if (i < 2*j) {
			// If the final label is mostly underscore, use the proposed label
			FUNC4("FAT label is mostly underscores. Using '%s' label instead.", SelectedDrive.proposed_label);
			for(i = 0; SelectedDrive.proposed_label[i] != 0; i++)
				wLabel[i] = SelectedDrive.proposed_label[i];
			wLabel[i] = 0;
		}
	} else if (FUNC7(wLabel) > 32) {
		wLabel[32] = 0;
	}

	// Needed for disk by label isolinux.cfg workaround
	FUNC6(wLabel, img_report.usb_label, sizeof(img_report.usb_label));
	FUNC1(Label, FUNC2(Label) + 1, img_report.usb_label);
	FUNC0(wLabel);
}