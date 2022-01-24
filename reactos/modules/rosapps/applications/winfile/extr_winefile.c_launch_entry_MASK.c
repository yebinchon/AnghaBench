#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int /*<<< orphan*/  iMalloc; } ;
struct TYPE_9__ {scalar_t__ etype; scalar_t__ pidl; } ;
struct TYPE_8__ {int cbSize; scalar_t__ lpIDList; int /*<<< orphan*/  nShow; int /*<<< orphan*/ * lpDirectory; int /*<<< orphan*/ * lpParameters; int /*<<< orphan*/ * lpFile; int /*<<< orphan*/ * lpVerb; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  fMask; } ;
typedef  TYPE_1__ SHELLEXECUTEINFOW ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_2__ Entry ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ET_SHELL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_7__ Globals ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SEE_MASK_IDLIST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC7(Entry* entry, HWND hwnd, UINT nCmdShow)
{
	WCHAR cmd[MAX_PATH];

	if (entry->etype == ET_SHELL) {
		BOOL ret = TRUE;

		SHELLEXECUTEINFOW shexinfo;

		shexinfo.cbSize = sizeof(SHELLEXECUTEINFOW);
		shexinfo.fMask = SEE_MASK_IDLIST;
		shexinfo.hwnd = hwnd;
		shexinfo.lpVerb = NULL;
		shexinfo.lpFile = NULL;
		shexinfo.lpParameters = NULL;
		shexinfo.lpDirectory = NULL;
		shexinfo.nShow = nCmdShow;
		shexinfo.lpIDList = FUNC5(entry, hwnd);

		if (!FUNC2(&shexinfo)) {
			FUNC3(hwnd, FUNC0());
			ret = FALSE;
		}

		if (shexinfo.lpIDList != entry->pidl)
			FUNC1(Globals.iMalloc, shexinfo.lpIDList);

		return ret;
	}

	FUNC4(entry, cmd);

	 /* start program, open document... */
	return FUNC6(hwnd, cmd, nCmdShow);
}