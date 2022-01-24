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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

int FUNC5(const char *path)
{
	int ret = 0;
#ifdef WANT_WIN32_UNICODE
	wchar_t *wpath;
	wpath = u2wlongpath(path);
	if(wpath)
	{
		DWORD attr = GetFileAttributesW(wpath);
		if(attr != INVALID_FILE_ATTRIBUTES && attr & FILE_ATTRIBUTE_DIRECTORY)
			ret=1;
		free(wpath);
	}
#else
	struct stat sb;
	if(path && !FUNC3(path, &sb))
	{
		if(FUNC1(sb.st_mode))
			ret=1;
	}
#endif
	return ret;
}