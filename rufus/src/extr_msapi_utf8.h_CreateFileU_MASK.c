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
typedef  int /*<<< orphan*/  LPSECURITY_ATTRIBUTES ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  wlpFileName ; 

__attribute__((used)) static __inline HANDLE FUNC5(const char* lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode,
								   LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition,
								   DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
{
	HANDLE ret = INVALID_HANDLE_VALUE;
	DWORD err = ERROR_INVALID_DATA;
	FUNC3(lpFileName);
	ret = FUNC0(wlpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes,
		dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
	err = FUNC1();
	FUNC4(lpFileName);
	FUNC2(err);
	return ret;
}