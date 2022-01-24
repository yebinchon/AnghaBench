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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  wvarname ; 

__attribute__((used)) static __inline char* FUNC6(const char* varname)
{
	FUNC4(varname);
	char* ret = NULL;
	wchar_t* wbuf = NULL;
	// _wgetenv() is *BROKEN* in MS compilers => use GetEnvironmentVariableW()
	DWORD dwSize = FUNC0(wvarname, wbuf, 0);
	wbuf = FUNC1(dwSize, sizeof(wchar_t));
	if (wbuf == NULL) {
		FUNC5(varname);
		return NULL;
	}
	dwSize = FUNC0(wvarname, wbuf, dwSize);
	if (dwSize != 0)
		ret = FUNC3(wbuf);
	FUNC2(wbuf);
	FUNC5(varname);
	return ret;
}