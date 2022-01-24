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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 

char *FUNC6(const char* name)
{
	char *ret = NULL;
#ifdef WANT_WIN32_UNICODE
	wchar_t *env;
	wchar_t *wname = NULL;
	if(win32_utf8_wide(name, &wname, NULL) > 0)
	{
		env = _wgetenv(wname);
		free(wname);
		if(env)
			win32_wide_utf8(env, &ret, NULL);
	}
#else
	ret = FUNC3(name);
	if(ret)
		ret = FUNC1(ret);
#endif
	return ret;
}