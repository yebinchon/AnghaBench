#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {scalar_t__ iBitmap; void* fsState; void* fsStyle; int /*<<< orphan*/  idCommand; } ;
typedef  TYPE_1__ TBBUTTON ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  scalar_t__ HIMAGELIST ;
typedef  int /*<<< orphan*/  HICON ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 void* BTNS_AUTOSIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_HASH ; 
 scalar_t__ IDC_HASH_TOOLBAR ; 
 int /*<<< orphan*/  IDC_SAVE ; 
 scalar_t__ IDC_SAVE_TOOLBAR ; 
 scalar_t__ IDI_HASH_16 ; 
 scalar_t__ IDI_SAVE_16 ; 
 int ILC_COLOR32 ; 
 int ILC_HIGHQUALITYSCALE ; 
 int ILC_MIRROR ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* TBSTATE_ENABLED ; 
 int /*<<< orphan*/  TB_ADDBUTTONS ; 
 int /*<<< orphan*/  TB_BUTTONSTRUCTSIZE ; 
 int /*<<< orphan*/  TB_SETIMAGELIST ; 
 int /*<<< orphan*/  TOOLBARCLASSNAME ; 
 int /*<<< orphan*/  TOOLBAR_STYLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  _RT_RCDATA ; 
 int /*<<< orphan*/  hHashToolbar ; 
 int /*<<< orphan*/  hMainDialog ; 
 int /*<<< orphan*/  hMainInstance ; 
 int /*<<< orphan*/  hSaveToolbar ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC10(HWND hDlg)
{
	HIMAGELIST hImageList;
	HICON hIconSave, hIconHash;
	int icon_offset = 0, i16 = FUNC4(SM_CXSMICON);
	TBBUTTON tbToolbarButtons[1];
	unsigned char* buffer;
	DWORD bufsize;

	if (i16 >= 28)
		icon_offset = 20;
	else if (i16 >= 20)
		icon_offset = 10;

	hSaveToolbar = FUNC1(0, TOOLBARCLASSNAME, NULL, TOOLBAR_STYLE,
		0, 0, 0, 0, hMainDialog, (HMENU)IDC_SAVE_TOOLBAR, hMainInstance, NULL);
	hImageList = FUNC6(i16, i16, ILC_COLOR32 | ILC_HIGHQUALITYSCALE | ILC_MIRROR, 1, 0);
	buffer = FUNC3(hMainInstance, FUNC7(IDI_SAVE_16 + icon_offset), _RT_RCDATA, "save icon", &bufsize, FALSE);
	hIconSave = FUNC0(buffer, bufsize, TRUE, 0x30000, 0, 0, 0);
	FUNC5(hImageList, hIconSave);
	FUNC2(hIconSave);
	FUNC8(hSaveToolbar, TB_SETIMAGELIST, (WPARAM)0, (LPARAM)hImageList);
	FUNC8(hSaveToolbar, TB_BUTTONSTRUCTSIZE, (WPARAM)sizeof(TBBUTTON), 0);
	FUNC9(tbToolbarButtons, 0, sizeof(TBBUTTON));
	tbToolbarButtons[0].idCommand = IDC_SAVE;
	tbToolbarButtons[0].fsStyle = BTNS_AUTOSIZE;
	tbToolbarButtons[0].fsState = TBSTATE_ENABLED;
	tbToolbarButtons[0].iBitmap = 0;
	FUNC8(hSaveToolbar, TB_ADDBUTTONS, (WPARAM)1, (LPARAM)&tbToolbarButtons);

	hHashToolbar = FUNC1(0, TOOLBARCLASSNAME, NULL, TOOLBAR_STYLE,
		0, 0, 0, 0, hMainDialog, (HMENU)IDC_HASH_TOOLBAR, hMainInstance, NULL);
	hImageList = FUNC6(i16, i16, ILC_COLOR32 | ILC_HIGHQUALITYSCALE | ILC_MIRROR, 1, 0);
	buffer = FUNC3(hMainInstance, FUNC7(IDI_HASH_16 + icon_offset), _RT_RCDATA, "hash icon", &bufsize, FALSE);
	hIconHash = FUNC0(buffer, bufsize, TRUE, 0x30000, 0, 0, 0);
	FUNC5(hImageList, hIconHash);
	FUNC2(hIconHash);
	FUNC8(hHashToolbar, TB_SETIMAGELIST, (WPARAM)0, (LPARAM)hImageList);
	FUNC8(hHashToolbar, TB_BUTTONSTRUCTSIZE, (WPARAM)sizeof(TBBUTTON), 0);
	FUNC9(tbToolbarButtons, 0, sizeof(TBBUTTON));
	tbToolbarButtons[0].idCommand = IDC_HASH;
	tbToolbarButtons[0].fsStyle = BTNS_AUTOSIZE;
	tbToolbarButtons[0].fsState = TBSTATE_ENABLED;
	tbToolbarButtons[0].iBitmap = 0;
	FUNC8(hHashToolbar, TB_ADDBUTTONS, (WPARAM)1, (LPARAM)&tbToolbarButtons);
}