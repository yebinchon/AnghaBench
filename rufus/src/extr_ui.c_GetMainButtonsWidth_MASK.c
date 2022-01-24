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
typedef  int /*<<< orphan*/  download ;
struct TYPE_5__ {int cx; } ;
struct TYPE_4__ {scalar_t__ left; scalar_t__ right; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BS_SPLITBUTTON ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 int /*<<< orphan*/  IDC_SELECT ; 
 int /*<<< orphan*/  MSG_007 ; 
 int /*<<< orphan*/  MSG_040 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bw ; 
 int cbw ; 
 scalar_t__ enable_fido ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * main_button_ids ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

void FUNC12(HWND hDlg)
{
	unsigned int i;
	RECT rc;
	LONG style;
	char download[64];

	FUNC6(FUNC2(hDlg, main_button_ids[0]), &rc);
	FUNC7(NULL, hDlg, (POINT*)&rc, 2);
	bw = rc.right - rc.left;

	for (i = 0; i < FUNC0(main_button_ids); i++) {
		// Make sure we add extra space for the SELECT split button (i == 0) if Fido is enabled
		bw = FUNC10(bw, FUNC4(hDlg, main_button_ids[i]) + ((enable_fido && i == 0) ? (3 * cbw) / 2 : cbw));
	}
	// The 'CLOSE' button is also be used to display 'CANCEL' and we sometimes
	// want to add "DOWNLOAD" into the Select split button => measure that too.
	bw = FUNC10(bw, FUNC3(FUNC2(hDlg, IDCANCEL), FUNC9(MSG_007)).cx + cbw);
	if (enable_fido) {
		FUNC11(download, FUNC9(MSG_040));
		FUNC1(download, sizeof(download));
		bw = FUNC10(bw, FUNC3(FUNC2(hDlg, IDC_SELECT), download).cx + (3 * cbw) / 2);
		style = FUNC5(FUNC2(hDlg, IDC_SELECT), GWL_STYLE);
		style|= BS_SPLITBUTTON;
		FUNC8(FUNC2(hDlg, IDC_SELECT), GWL_STYLE, style);
	}
}