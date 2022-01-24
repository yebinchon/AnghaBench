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
typedef  int /*<<< orphan*/  wtmp ;
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_6__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_5__ {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FW_SEMIBOLD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PROOF_QUALITY ; 
 int /*<<< orphan*/  SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETFONT ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ ,int) ; 
 int* section_control_ids ; 
 size_t FUNC14 (int*) ; 

void FUNC15(HWND hDlg)
{
	RECT rc;
	HWND hCtrl;
	SIZE sz;
	HFONT hf;
	wchar_t wtmp[128];
	size_t wlen;
	int i;

	// Set the section header fonts and resize the static controls accordingly
	hf = FUNC1(-FUNC9(14, FUNC3(FUNC2(hMainDialog), LOGPIXELSY), 72), 0, 0, 0,
		FW_SEMIBOLD, FALSE, FALSE, FALSE, DEFAULT_CHARSET, 0, 0, PROOF_QUALITY, 0, "Segoe UI");

	for (i = 0; i < FUNC0(section_control_ids); i++) {
		FUNC10(hDlg, section_control_ids[i], WM_SETFONT, (WPARAM)hf, TRUE);
		hCtrl = FUNC4(hDlg, section_control_ids[i]);
		FUNC13(wtmp, 0, sizeof(wtmp));
		FUNC7(hCtrl, wtmp, FUNC0(wtmp));
		wlen = FUNC14(wtmp);
		wtmp[wlen++] = L' ';
		wtmp[wlen++] = L' ';
		FUNC12(hCtrl, wtmp);
		FUNC6(hCtrl, &rc);
		FUNC8(NULL, hDlg, (POINT*)&rc, 2);
		sz = FUNC5(hCtrl, NULL);
		FUNC11(hCtrl, NULL, rc.left, rc.top, sz.cx, sz.cy, SWP_NOZORDER);
	}
}