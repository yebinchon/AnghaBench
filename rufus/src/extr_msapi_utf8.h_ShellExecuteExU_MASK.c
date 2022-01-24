#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int cbSize; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hInstApp; int /*<<< orphan*/  lpClass; int /*<<< orphan*/  lpDirectory; int /*<<< orphan*/  lpParameters; int /*<<< orphan*/  lpFile; int /*<<< orphan*/  lpVerb; } ;
struct TYPE_7__ {int fMask; int /*<<< orphan*/ * lpClass; int /*<<< orphan*/ * lpDirectory; int /*<<< orphan*/ * lpParameters; int /*<<< orphan*/ * lpFile; int /*<<< orphan*/ * lpVerb; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hInstApp; } ;
typedef  TYPE_1__ SHELLEXECUTEINFOW ;
typedef  TYPE_2__ SHELLEXECUTEINFOA ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_BAD_LENGTH ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int SEE_MASK_CLASSNAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline BOOL FUNC6(SHELLEXECUTEINFOA* lpExecInfo)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	SHELLEXECUTEINFOW wExecInfo;

	// Because we're lazy, we'll assume that the A and W structs inherently have the same size
	if (lpExecInfo->cbSize != sizeof(SHELLEXECUTEINFOW)) {
		FUNC1(ERROR_BAD_LENGTH); return FALSE;
	}
	FUNC3(&wExecInfo, lpExecInfo, lpExecInfo->cbSize);
	wExecInfo.lpVerb = FUNC5(lpExecInfo->lpVerb);
	wExecInfo.lpFile = FUNC5(lpExecInfo->lpFile);
	wExecInfo.lpParameters = FUNC5(lpExecInfo->lpParameters);
	wExecInfo.lpDirectory = FUNC5(lpExecInfo->lpDirectory);
	if (wExecInfo.fMask & SEE_MASK_CLASSNAME) {
		wExecInfo.lpClass = FUNC5(lpExecInfo->lpClass);
	} else {
		wExecInfo.lpClass = NULL;
	}
	ret = FUNC2(&wExecInfo);
	err = FUNC0();
	// Copy the returned values back
	lpExecInfo->hInstApp = wExecInfo.hInstApp;
	lpExecInfo->hProcess = wExecInfo.hProcess;
	FUNC4(wExecInfo.lpVerb);
	FUNC4(wExecInfo.lpFile);
	FUNC4(wExecInfo.lpParameters);
	FUNC4(wExecInfo.lpDirectory);
	FUNC4(wExecInfo.lpClass);
	FUNC1(err);
	return ret;
}