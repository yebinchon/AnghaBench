#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  hInstance; } ;
struct TYPE_6__ {struct TYPE_6__* up; } ;
struct TYPE_5__ {TYPE_3__* cur; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ Pane ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DestinationDlgProc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_4__ Globals ; 
 int /*<<< orphan*/  IDD_SELECT_DESTINATION ; 
 scalar_t__ IDOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int _MAX_EXT ; 
 int _MAX_FNAME ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char*,char*,char*) ; 

__attribute__((used)) static BOOL FUNC8(Pane* pane, LPWSTR source, LPWSTR target)
{
	WCHAR path[MAX_PATH];
	int len;

	FUNC3(pane->cur, path);

	if (FUNC0(Globals.hInstance, FUNC1(IDD_SELECT_DESTINATION), pane->hwnd, DestinationDlgProc, (LPARAM)path) != IDOK)
		return FALSE;

	FUNC3(pane->cur, source);

	/* convert relative targets to absolute paths */
	if (path[0]!='/' && path[1]!=':') {
		FUNC3(pane->cur->up, target);
		len = FUNC6(target);

		if (target[len-1]!='\\' && target[len-1]!='/')
			target[len++] = '/';

		FUNC5(target+len, path);
	} else
		FUNC5(target, path);

	/* If the target already exists as directory, create a new target below this. */
	if (FUNC4(path)) {
		WCHAR fname[_MAX_FNAME], ext[_MAX_EXT];
		static const WCHAR sAppend[] = {'%','s','/','%','s','%','s','\0'};

		FUNC2(source, NULL, NULL, fname, ext);

		FUNC7(target, sAppend, path, fname, ext);
	}

	return TRUE;
}