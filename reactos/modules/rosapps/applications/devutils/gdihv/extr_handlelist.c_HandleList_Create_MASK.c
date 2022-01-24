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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int mask; char* pszText; int cx; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_1__ LVCOLUMN ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LVCFMT_LEFT ; 
 int LVCF_FMT ; 
 int LVCF_TEXT ; 
 int LVCF_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 

VOID
FUNC2(HWND hListCtrl)
{
	LVCOLUMN column;

	column.mask = LVCF_TEXT|LVCF_FMT|LVCF_WIDTH;
	column.fmt = LVCFMT_LEFT;

	column.pszText = L"Number";
	column.cx = 50;
	(void)FUNC1(hListCtrl, 0, &column);

	column.pszText = L"Index";
	column.cx = 45;
	(void)FUNC1(hListCtrl, 1, &column);

	column.pszText = L"Handle";
	column.cx = 90;
	(void)FUNC1(hListCtrl, 2, &column);

	column.pszText = L"Type";
	column.cx = 80;
	(void)FUNC1(hListCtrl, 3, &column);

	column.pszText = L"Process";
	column.cx = 80;
	(void)FUNC1(hListCtrl, 4, &column);

	column.pszText = L"KernelData";
	column.cx = 80;
	(void)FUNC1(hListCtrl, 5, &column);

	column.pszText = L"UserData";
	column.cx = 80;
	(void)FUNC1(hListCtrl, 6, &column);

	column.pszText = L"Type";
	column.cx = 80;
	(void)FUNC1(hListCtrl, 7, &column);

	FUNC0(hListCtrl, 0);
}