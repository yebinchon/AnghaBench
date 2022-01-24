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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MOVEFILE_REPLACE_EXISTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6 (const char *oldpath, const char *newpath)
{
#ifdef WIN32
    wchar_t *oldpathw = win32_long_path (oldpath);
    wchar_t *newpathw = win32_long_path (newpath);
    int ret = 0;

    if (!MoveFileExW (oldpathw, newpathw, MOVEFILE_REPLACE_EXISTING)) {
        ret = -1;
        errno = windows_error_to_errno (GetLastError());
    }

    g_free (oldpathw);
    g_free (newpathw);
    return ret;
#else
    return FUNC3 (oldpath, newpath);
#endif
}