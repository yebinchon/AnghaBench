#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_DATA ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  wlpFilename ; 

__attribute__((used)) static __inline DWORD FUNC6(HANDLE hProcess, HMODULE hModule, char* lpFilename, DWORD nSize)
{
	DWORD ret = 0, err = ERROR_INVALID_DATA;
	// coverity[returned_null]
	FUNC3(lpFilename, nSize);
	ret = FUNC1(hProcess, hModule, wlpFilename, nSize);
	err = FUNC0();
	if ((ret != 0)
		&& ((ret = FUNC4(wlpFilename, lpFilename, nSize)) == 0)) {
		err = FUNC0();
	}
	FUNC5(lpFilename);
	FUNC2(err);
	return ret;
}