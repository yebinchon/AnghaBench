#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cx; } ;
struct TYPE_4__ {int right; int left; int top; scalar_t__ bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GW_HWNDPREV ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 int /*<<< orphan*/  IDC_CHECK_NOW ; 
 int /*<<< orphan*/  IDC_UPDATE_FREQUENCY ; 
 int /*<<< orphan*/  IDS_INCLUDE_BETAS_TXT ; 
 int /*<<< orphan*/  IDS_UPDATE_FREQUENCY_TXT ; 
 int /*<<< orphan*/  MSG_008 ; 
 int /*<<< orphan*/  MSG_009 ; 
 int /*<<< orphan*/  MSG_013 ; 
 int /*<<< orphan*/  MSG_014 ; 
 int /*<<< orphan*/  MSG_015 ; 
 int /*<<< orphan*/  MSG_016 ; 
 int /*<<< orphan*/  MSG_030 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,scalar_t__,int) ; 
 int cbw ; 
 scalar_t__ ddbh ; 
 int ddw ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/ * update_settings_reposition_ids ; 

__attribute__((used)) static void FUNC11(HWND hDlg)
{
	RECT rc;
	HWND hCtrl, hPrevCtrl;
	int i, ow, dw;	// original width, delta

	// Get the original size of the control
	FUNC5(FUNC1(hDlg, IDS_UPDATE_FREQUENCY_TXT), &rc);
	FUNC6(NULL, hDlg, (POINT*)&rc, 2);
	ow = rc.right - rc.left;
	dw = FUNC4(hDlg, IDS_UPDATE_FREQUENCY_TXT) - ow;
	dw = FUNC10(dw, FUNC4(hDlg, IDS_INCLUDE_BETAS_TXT) - ow);
	if (dw > 0) {
		FUNC5(hDlg, &rc);
		FUNC8(hDlg, NULL, -1, -1, rc.right - rc.left + dw, rc.bottom - rc.top, SWP_NOMOVE | SWP_NOZORDER);
		for (i = 0; i < FUNC0(update_settings_reposition_ids); i++)
			FUNC7(hDlg, update_settings_reposition_ids[i], (i < 4) ? 0 : dw, (i >= 4) ? 0 : dw);
	}

	hCtrl = FUNC1(hDlg, IDC_UPDATE_FREQUENCY);
	FUNC5(hCtrl, &rc);
	FUNC6(NULL, hDlg, (POINT*)&rc, 2);
	ow = rc.right - rc.left;

	dw = FUNC3(hCtrl, FUNC9(MSG_013)).cx;
	dw = FUNC10(dw, FUNC3(hCtrl, FUNC9(MSG_030, FUNC9(MSG_014))).cx);
	dw = FUNC10(dw, FUNC3(hCtrl, FUNC9(MSG_015)).cx);
	dw = FUNC10(dw, FUNC3(hCtrl, FUNC9(MSG_016)).cx);
	dw = FUNC10(dw, FUNC3(hCtrl, FUNC9(MSG_008)).cx);
	dw = FUNC10(dw, FUNC3(hCtrl, FUNC9(MSG_009)).cx);
	dw -= ow - ddw;
	if (dw > 0) {
		FUNC5(hDlg, &rc);
		FUNC8(hDlg, NULL, -1, -1, rc.right - rc.left + dw, rc.bottom - rc.top, SWP_NOMOVE | SWP_NOZORDER);
		for (i = 0; i < FUNC0(update_settings_reposition_ids); i++) {
			if ((i >= 2) && (i <= 3))
				continue;
			FUNC7(hDlg, update_settings_reposition_ids[i], (i < 6) ? 0 : dw, (i >= 6) ? 0 : dw);
		}
	}

	FUNC5(FUNC1(hDlg, IDC_CHECK_NOW), &rc);
	FUNC6(NULL, hDlg, (POINT*)&rc, 2);
	ow = rc.right - rc.left;
	dw = FUNC4(hDlg, IDC_CHECK_NOW) - ow + cbw;
	dw = FUNC10(dw, FUNC4(hDlg, IDCANCEL) - ow + cbw);
	if (dw > 0) {
		FUNC5(hDlg, &rc);
		FUNC8(hDlg, NULL, -1, -1, rc.right - rc.left + dw, rc.bottom - rc.top, SWP_NOMOVE | SWP_NOZORDER);
		for (i = 0; i < FUNC0(update_settings_reposition_ids); i++) {
			if ((i >= 1) && (i <= 5))
				continue;
			FUNC7(hDlg, update_settings_reposition_ids[i], 0, dw);
		}
	}
	hCtrl = FUNC1(hDlg, IDC_CHECK_NOW);
	FUNC5(hCtrl, &rc);
	FUNC6(NULL, hDlg, (POINT*)&rc, 2);
	hPrevCtrl = FUNC2(hCtrl, GW_HWNDPREV);
	FUNC8(hCtrl, hPrevCtrl, rc.left, rc.top, rc.right - rc.left, ddbh, 0);
	hCtrl = FUNC1(hDlg, IDCANCEL);
	FUNC5(hCtrl, &rc);
	FUNC6(NULL, hDlg, (POINT*)&rc, 2);
	hPrevCtrl = FUNC2(hCtrl, GW_HWNDPREV);
	FUNC8(hCtrl, hPrevCtrl, rc.left, rc.top, rc.right - rc.left, ddbh, 0);
}