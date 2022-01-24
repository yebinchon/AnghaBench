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
struct TYPE_8__ {int cb; int /*<<< orphan*/  lpTitle; int /*<<< orphan*/  lpDesktop; } ;
struct TYPE_7__ {void* lpTitle; void* lpDesktop; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_2__* LPSTARTUPINFOA ;
typedef  int /*<<< orphan*/  LPSECURITY_ATTRIBUTES ;
typedef  int /*<<< orphan*/  LPPROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_BAD_LENGTH ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  wlpApplicationName ; 
 int /*<<< orphan*/  wlpCommandLine ; 
 int /*<<< orphan*/  wlpCurrentDirectory ; 

__attribute__((used)) static __inline BOOL FUNC8(const char* lpApplicationName, const char* lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes,
									LPSECURITY_ATTRIBUTES lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags,
									LPVOID lpEnvironment, const char* lpCurrentDirectory, LPSTARTUPINFOA lpStartupInfo,
									LPPROCESS_INFORMATION lpProcessInformation)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	STARTUPINFOW wStartupInfo;
	FUNC6(lpApplicationName);
	FUNC6(lpCommandLine);
	FUNC6(lpCurrentDirectory);

	// Because we're lazy, we'll assume that the A and W structs inherently have the same size
	// Also prevents the use of STARTUPINFOEX
	if (lpStartupInfo->cb != sizeof(STARTUPINFOW)) {
		err = ERROR_BAD_LENGTH; goto out;
	}
	FUNC3(&wStartupInfo, lpStartupInfo, lpStartupInfo->cb);
	wStartupInfo.lpDesktop = FUNC5(lpStartupInfo->lpDesktop);
	wStartupInfo.lpTitle = FUNC5(lpStartupInfo->lpTitle);
	ret = FUNC0(wlpApplicationName, wlpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles,
		dwCreationFlags, lpEnvironment, wlpCurrentDirectory, &wStartupInfo, lpProcessInformation);
	err = FUNC1();
	FUNC4(wStartupInfo.lpDesktop);
	FUNC4(wStartupInfo.lpTitle);
out:
	FUNC7(lpApplicationName);
	FUNC7(lpCommandLine);
	FUNC7(lpCurrentDirectory);
	FUNC2(err);
	return ret;
}