#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  button_info ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; int /*<<< orphan*/  left; } ;
struct TYPE_6__ {int cx; } ;
struct TYPE_5__ {int cbSize; int /*<<< orphan*/ * pszText; int /*<<< orphan*/  dwMask; } ;
typedef  TYPE_1__ TBBUTTONINFO ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  HWND_TOP ; 
 scalar_t__ IDC_ADVANCED_DRIVE_PROPERTIES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_119 ; 
 int /*<<< orphan*/  MSG_121 ; 
 int /*<<< orphan*/  MSG_122 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBIF_TEXT ; 
 int /*<<< orphan*/  TB_GETIDEALSIZE ; 
 int /*<<< orphan*/  TB_SETBUTTONINFO ; 
 int /*<<< orphan*/  TB_SETIMAGELIST ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * advanced_device_move_ids ; 
 int advanced_device_section_height ; 
 int /*<<< orphan*/ * advanced_device_toggle_ids ; 
 int fw ; 
 int /*<<< orphan*/  hAdvancedDeviceToolbar ; 
 int /*<<< orphan*/  hDeviceList ; 
 scalar_t__ hDownImageList ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  hTargetSystem ; 
 scalar_t__ hUpImageList ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,...) ; 
 int sbw ; 
 int* section_vpos ; 
 int ssw ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** wtbtext ; 

void FUNC12(BOOL enable)
{
	RECT rc;
	SIZE sz;
	TBBUTTONINFO button_info;
	int i, shift = advanced_device_section_height;

	if (!enable)
		shift = -shift;
	section_vpos[1] += shift;
	section_vpos[2] += shift;

	// Toggle the Hide/Show toolbar text
	FUNC11(FUNC10((enable) ? MSG_122 : MSG_121, FUNC10(MSG_119)), wtbtext[0], FUNC0(wtbtext[0]));
	button_info.cbSize = sizeof(button_info);
	button_info.dwMask = TBIF_TEXT;
	button_info.pszText = wtbtext[0];
	FUNC7(hAdvancedDeviceToolbar, TB_SETBUTTONINFO, (WPARAM)IDC_ADVANCED_DRIVE_PROPERTIES, (LPARAM)&button_info);
	FUNC7(hAdvancedDeviceToolbar, TB_SETIMAGELIST, (WPARAM)0, (LPARAM)((enable) ? hUpImageList : hDownImageList));
	FUNC2(hAdvancedDeviceToolbar, &rc);
	FUNC4(NULL, hMainDialog, (POINT*)&rc, 2);
	FUNC7(hAdvancedDeviceToolbar, TB_GETIDEALSIZE, (WPARAM)FALSE, (LPARAM)&sz);
	// TB_GETIDEALSIZE may act up and report negative values
	if (sz.cx < 16)
		sz.cx = fw;
	FUNC8(hAdvancedDeviceToolbar, hTargetSystem, rc.left, rc.top, sz.cx, rc.bottom - rc.top, 0);

	// Move the controls up or down
	for (i = 0; i<FUNC0(advanced_device_move_ids); i++)
		FUNC5(hMainDialog, advanced_device_move_ids[i], shift);

	// Hide or show the various advanced options
	for (i = 0; i<FUNC0(advanced_device_toggle_ids); i++)
		FUNC9(FUNC1(hMainDialog, advanced_device_toggle_ids[i]), enable ? SW_SHOW : SW_HIDE);

	FUNC2(hDeviceList, &rc);
	FUNC4(NULL, hMainDialog, (POINT*)&rc, 2);
	FUNC8(hDeviceList, HWND_TOP, rc.left, rc.top, enable ? fw - ssw - sbw : fw, rc.bottom - rc.top, 0);

	// Resize the main dialog and log window
	FUNC6(shift);

	// Never hurts to force Windows' hand
	FUNC3(hMainDialog, NULL, TRUE);
}