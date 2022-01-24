#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_6__ {int member_2; int member_3; scalar_t__ right; int /*<<< orphan*/  left; scalar_t__ top; scalar_t__ bottom; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {scalar_t__ cx; scalar_t__ cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  IDC_PARTITION_TYPE ; 
 int /*<<< orphan*/  IDC_SAVE ; 
 int /*<<< orphan*/  IDC_TARGET_SYSTEM ; 
 int /*<<< orphan*/  IDS_CSM_HELP_TXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TB_GETIDEALSIZE ; 
 scalar_t__ WINDOWS_10 ; 
 scalar_t__ bh ; 
 void* cbw ; 
 void* ddw ; 
 int /*<<< orphan*/  hDeviceList ; 
 int /*<<< orphan*/  hSaveToolbar ; 
 int /*<<< orphan*/  hTargetSystem ; 
 int /*<<< orphan*/  mw ; 
 scalar_t__ nWindowsVersion ; 
 scalar_t__ sbw ; 
 int /*<<< orphan*/  ssw ; 
 int /*<<< orphan*/  sw ; 
 int /*<<< orphan*/  tw ; 

void FUNC6(HWND hDlg)
{
	int checkbox_internal_spacing = 12, dropdown_internal_spacing = 15;
	RECT rc = { 0, 0, 4, 8 };
	SIZE sz;

	// Compute base unit sizes since GetDialogBaseUnits() returns garbage data.
	// See http://support.microsoft.com/kb/125681
	FUNC2(hDlg, &rc);
	sz.cx = rc.right;
	sz.cy = rc.bottom;

	// TODO: figure out the specifics of each Windows version
	if (nWindowsVersion == WINDOWS_10) {
		checkbox_internal_spacing = 10;
		dropdown_internal_spacing = 13;
	}

	// Checkbox and (blank) dropdown widths
	cbw = FUNC4(checkbox_internal_spacing, sz.cx, 4);
	ddw = FUNC4(dropdown_internal_spacing, sz.cx, 4);

	// Spacing width between half-length dropdowns (sep) as well as left margin
	FUNC1(FUNC0(hDlg, IDC_TARGET_SYSTEM), &rc);
	FUNC3(NULL, hDlg, (POINT*)&rc, 2);
	sw = rc.left;
	FUNC1(FUNC0(hDlg, IDC_PARTITION_TYPE), &rc);
	FUNC3(NULL, hDlg, (POINT*)&rc, 2);
	sw -= rc.right;
	mw = rc.left;

	// Small button width
	FUNC5(hSaveToolbar, TB_GETIDEALSIZE, (WPARAM)FALSE, (LPARAM)&sz);
	sbw = sz.cx;

	// Small separator widths and button height
	FUNC1(FUNC0(hDlg, IDC_SAVE), &rc);
	FUNC3(NULL, hDlg, (POINT*)&rc, 2);
	bh = rc.bottom - rc.top;
	ssw = rc.left;
	FUNC1(hDeviceList, &rc);
	FUNC3(NULL, hDlg, (POINT*)&rc, 2);
	ssw -= rc.right;

	// CSM tooltip separator width
	FUNC1(FUNC0(hDlg, IDS_CSM_HELP_TXT), &rc);
	FUNC3(NULL, hDlg, (POINT*)&rc, 2);
	tw = rc.left;
	FUNC1(hTargetSystem, &rc);
	FUNC3(NULL, hDlg, (POINT*)&rc, 2);
	tw -= rc.right;
}