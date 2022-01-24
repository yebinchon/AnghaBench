#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  hwnd; int /*<<< orphan*/  treePane; TYPE_3__* cur; } ;
struct TYPE_22__ {int /*<<< orphan*/  hwnd; TYPE_2__ left; } ;
struct TYPE_19__ {int dwFileAttributes; char* cFileName; } ;
struct TYPE_21__ {int scanned; scalar_t__ expanded; struct TYPE_21__* up; TYPE_1__ data; } ;
typedef  TYPE_2__ Pane ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ Entry ;
typedef  TYPE_4__ ChildWnd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_FINDSTRING ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VK_MENU ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ChildWnd* child, Pane* pane, HWND hwnd)
{
	Entry* entry = pane->cur;

	if (!entry)
		return;

	if (entry->data.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
		int scanned_old = entry->scanned;

		if (!scanned_old)
		{
			int idx = FUNC1(child->left.hwnd, LB_GETCURSEL, 0, 0);
			FUNC6(child, entry, idx, hwnd);
		}

		if (entry->data.cFileName[0]=='.' && entry->data.cFileName[1]=='\0')
			return;

		if (entry->data.cFileName[0]=='.' && entry->data.cFileName[1]=='.' && entry->data.cFileName[2]=='\0') {
			entry = child->left.cur->up;
			FUNC3(&child->left, entry);
			goto focus_entry;
		} else if (entry->expanded)
			FUNC3(pane, child->left.cur);
		else {
			FUNC4(child, child->left.cur);

			if (!pane->treePane) focus_entry: {
				int idxstart = FUNC1(child->left.hwnd, LB_GETCURSEL, 0, 0);
				int idx = FUNC1(child->left.hwnd, LB_FINDSTRING, idxstart, (LPARAM)entry);
				FUNC1(child->left.hwnd, LB_SETCURSEL, idx, 0);
				FUNC7(child, entry, idx, hwnd);
			}
		}

		if (!scanned_old) {
			FUNC2(pane, FALSE);

			FUNC8(pane);
		}
	} else {
		if (FUNC0(VK_MENU) < 0)
			FUNC9(entry, child->hwnd);
		else
			FUNC5(entry, child->hwnd, SW_SHOWNORMAL);
	}
}