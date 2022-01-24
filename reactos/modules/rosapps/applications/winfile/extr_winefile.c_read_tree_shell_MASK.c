#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
struct TYPE_21__ {int /*<<< orphan*/  expanded; scalar_t__ down; int /*<<< orphan*/ * folder; TYPE_3__* pidl; int /*<<< orphan*/  etype; } ;
struct TYPE_18__ {scalar_t__ cb; } ;
struct TYPE_20__ {TYPE_1__ mkid; } ;
struct TYPE_19__ {TYPE_4__ entry; } ;
struct TYPE_17__ {int /*<<< orphan*/  iMalloc; int /*<<< orphan*/ * iDesktop; } ;
typedef  int /*<<< orphan*/  SORT_ORDER ;
typedef  TYPE_2__ Root ;
typedef  TYPE_3__* LPITEMIDLIST ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ LPBYTE ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HCURSOR ;
typedef  TYPE_4__ Entry ;

/* Variables and functions */
 int /*<<< orphan*/  ET_SHELL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_16__ Globals ; 
 scalar_t__ IDC_WAIT ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Entry* FUNC8(Root* root, LPITEMIDLIST pidl, SORT_ORDER sortOrder, HWND hwnd)
{
	Entry* entry = &root->entry;
	Entry* next;
	LPITEMIDLIST next_pidl = pidl;
	IShellFolder* folder;
	IShellFolder* child = NULL;
	HRESULT hr;

	HCURSOR old_cursor = FUNC4(FUNC3(0, (LPCWSTR)IDC_WAIT));

	entry->etype = ET_SHELL;
	folder = Globals.iDesktop;

	while(entry) {
		entry->pidl = next_pidl;
		entry->folder = folder;

		if (!pidl->mkid.cb)
			break;

		 /* copy first element of item idlist */
		next_pidl = FUNC1(Globals.iMalloc, pidl->mkid.cb+sizeof(USHORT));
		FUNC6(next_pidl, pidl, pidl->mkid.cb);
		((LPITEMIDLIST)((LPBYTE)next_pidl+pidl->mkid.cb))->mkid.cb = 0;

		hr = FUNC2(folder, next_pidl, 0, &IID_IShellFolder, (void**)&child);
		if (FUNC0(hr))
			break;

		FUNC7(entry, NULL, sortOrder, hwnd);

		if (entry->down)
			entry->expanded = TRUE;

		next = FUNC5(entry, next_pidl);
		if (!next)
			break;

		folder = child;
		entry = next;

		 /* go to next element */
		pidl = (LPITEMIDLIST) ((LPBYTE)pidl+pidl->mkid.cb);
	}

	FUNC4(old_cursor);

	return entry;
}