#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_8__ {int code; } ;
struct TYPE_7__ {int uNewState; int uOldState; int /*<<< orphan*/  iItem; } ;
struct TYPE_6__ {int /*<<< orphan*/  lParam; int /*<<< orphan*/  iItem; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ LV_ITEM ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_2__* LPNMLISTVIEW ;
typedef  TYPE_3__* LPNMHDR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_HANDLELIST ; 
 int /*<<< orphan*/  IDC_PROCESSLIST ; 
 int /*<<< orphan*/  LVIF_PARAM ; 
 int LVIS_SELECTED ; 
#define  LVN_ITEMCHANGED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static LRESULT
FUNC4(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
	LPNMHDR pnmh = (LPNMHDR)lParam;

	switch(pnmh->code)
	{
		case LVN_ITEMCHANGED:
		{
			LPNMLISTVIEW pnmlv = (LPNMLISTVIEW)pnmh;
			if ((wParam == IDC_PROCESSLIST)
				&& (pnmlv->uNewState & LVIS_SELECTED)
				&& !(pnmlv->uOldState & LVIS_SELECTED))
			{
				LV_ITEM item;
				FUNC3(&item, 0, sizeof(LV_ITEM));
				item.mask = LVIF_PARAM;
				item.iItem = pnmlv->iItem;
				(void)FUNC2(FUNC0(hWnd, IDC_PROCESSLIST), &item);
				FUNC1(FUNC0(hWnd, IDC_HANDLELIST), (HANDLE)item.lParam);
				return TRUE;
			}
			break;
		}
	}

	return 0;
}