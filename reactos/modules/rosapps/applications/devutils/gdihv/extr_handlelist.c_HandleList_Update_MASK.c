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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ UINT_PTR ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int mask; int cchTextMax; size_t iItem; scalar_t__ lParam; scalar_t__ iSubItem; int /*<<< orphan*/ * pszText; } ;
struct TYPE_5__ {int Type; scalar_t__ UserData; scalar_t__ KernelData; scalar_t__ ProcessId; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* PGDI_TABLE_ENTRY ;
typedef  TYPE_2__ LVITEM ;
typedef  scalar_t__ LPARAM ;
typedef  int LONG_PTR ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int GDI_HANDLE_BASETYPE_MASK ; 
 size_t GDI_HANDLE_COUNT ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 TYPE_1__* GdiHandleTable ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int LVIF_PARAM ; 
 int LVIF_TEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

VOID
FUNC7(HWND hHandleListCtrl, HANDLE ProcessId)
{
	INT i, index;
	HANDLE handle;
	PGDI_TABLE_ENTRY pEntry;
	LVITEM item;
	TCHAR strText[80];
	TCHAR* str2;

	(void)FUNC2(hHandleListCtrl);
	item.mask = LVIF_TEXT|LVIF_PARAM;
	item.pszText = strText;
	item.cchTextMax = 80;
	for (i = 0; i<= GDI_HANDLE_COUNT; i++)
	{
		pEntry = &GdiHandleTable[i];
		if ( ((ProcessId != (HANDLE)1) && ((pEntry->Type & GDI_HANDLE_BASETYPE_MASK) != 0)) ||
		     ((ProcessId == (HANDLE)1) && ((pEntry->Type & GDI_HANDLE_BASETYPE_MASK) == 0)) ||
		      (ProcessId == (HANDLE)2) )
		{
			if (ProcessId == (HANDLE)1 || ProcessId == (HANDLE)2 ||
			    ((LONG_PTR)ProcessId & 0xfffc) == ((LONG_PTR)pEntry->ProcessId & 0xfffc))
			{
				handle = FUNC0(i, pEntry->Type);
				index = FUNC3(hHandleListCtrl);
				item.iItem = index;
				item.iSubItem = 0;
				item.lParam = (LPARAM)handle;

				FUNC6(strText, L"%d", index);
				(void)FUNC4(hHandleListCtrl, &item);

				FUNC6(strText, L"%d", i);
				FUNC5(hHandleListCtrl, index, 1, strText);

				FUNC6(strText, L"%#08Ix", handle);
				FUNC5(hHandleListCtrl, index, 2, strText);

				str2 = FUNC1(handle);
				FUNC5(hHandleListCtrl, index, 3, str2);

				FUNC6(strText, L"%#08Ix", (UINT_PTR)pEntry->ProcessId);
				FUNC5(hHandleListCtrl, index, 4, strText);

				FUNC6(strText, L"%#08Ix", (UINT_PTR)pEntry->KernelData);
				FUNC5(hHandleListCtrl, index, 5, strText);

				FUNC6(strText, L"%#08Ix", (UINT_PTR)pEntry->UserData);
				FUNC5(hHandleListCtrl, index, 6, strText);

				FUNC6(strText, L"%#08x", (UINT)pEntry->Type);
				FUNC5(hHandleListCtrl, index, 7, strText);
			}
		}
	}
}