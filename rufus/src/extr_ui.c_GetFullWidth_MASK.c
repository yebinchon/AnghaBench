#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cx; } ;
struct TYPE_5__ {int right; int left; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDC_BOOT_SELECTION ; 
 int /*<<< orphan*/  IDC_IMAGE_OPTION ; 
 int /*<<< orphan*/  IDS_DEVICE_TXT ; 
 int /*<<< orphan*/  MSG_117 ; 
 int /*<<< orphan*/  MSG_118 ; 
 int /*<<< orphan*/  MSG_279 ; 
 int /*<<< orphan*/  MSG_280 ; 
 int /*<<< orphan*/  MSG_281 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int bsw ; 
 int bw ; 
 int dbw ; 
 int ddw ; 
 int /*<<< orphan*/ * full_width_checkboxes ; 
 int fw ; 
 int /*<<< orphan*/  hBootType ; 
 int hw ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 
 int FUNC8 (int,int) ; 
 int sbw ; 
 int ssw ; 
 int sw ; 

void FUNC9(HWND hDlg)
{
	RECT rc;
	int i;

	// Get the dialog border width
	FUNC5(hDlg, &rc);
	dbw = rc.right - rc.left;
	FUNC1(hDlg, &rc);
	dbw -= rc.right - rc.left;

	// Compute the minimum size needed for the Boot Selection dropdown
	FUNC5(FUNC2(hDlg, IDC_BOOT_SELECTION), &rc);
	FUNC6(NULL, hDlg, (POINT*)&rc, 2);

	bsw = FUNC8(rc.right - rc.left, FUNC3(hBootType, FUNC7(MSG_279)).cx + ddw);
	bsw = FUNC8(bsw, FUNC3(hBootType, FUNC7(MSG_281, FUNC7(MSG_280))).cx + ddw);

	// Initialize full width to the UI's default size
	FUNC5(FUNC2(hDlg, IDS_DEVICE_TXT), &rc);
	FUNC6(NULL, hDlg, (POINT*)&rc, 2);
	fw = rc.right - rc.left - ddw;

	// Go through the Image Options for Windows To Go
	fw = FUNC8(fw, FUNC3(FUNC2(hDlg, IDC_IMAGE_OPTION), FUNC7(MSG_117)).cx);
	fw = FUNC8(fw, FUNC3(FUNC2(hDlg, IDC_IMAGE_OPTION), FUNC7(MSG_118)).cx);

	// Now deal with full length checkbox lines
	for (i = 0; i<FUNC0(full_width_checkboxes); i++)
		fw = FUNC8(fw, FUNC4(hDlg, full_width_checkboxes[i]));

	// All of the above is for text only, so we need to add dd space
	fw += ddw;

	// Our min also needs to be longer than 2 half length dropdowns + spacer
	fw = FUNC8(fw, 2 * hw + sw);

	// Now that we have our minimum full width, adjust the button width if needed
	// Adjust according to min full width
	bw = FUNC8(bw, (fw - 2 * ssw - sw) / 4);
	// Adjust according to min boot selection width
	bw = FUNC8(bw, (bsw + sbw - sw) / 3);

	// Adjust according to min half width
	bw = FUNC8(bw, (hw / 2) - ssw);

	// Now that our button width is set, we can adjust the rest
	hw = FUNC8(hw, 2 * bw + ssw);
	fw = FUNC8(fw, 2 * hw + sw);

	bsw = FUNC8(bsw, fw - bw - 2 * ssw - sbw);

	// TODO: Also pick a few choice messages from info/status
}