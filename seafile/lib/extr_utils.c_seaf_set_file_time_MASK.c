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
typedef  scalar_t__ time_t ;
struct utimbuf {scalar_t__ modtime; int /*<<< orphan*/  actime; } ;
struct stat {int /*<<< orphan*/  st_atime; } ;
typedef  scalar_t__ guint64 ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,struct utimbuf*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 

int
FUNC7 (const char *path, guint64 mtime)
{
#ifndef WIN32
    struct stat st;
    struct utimbuf times;

    if (FUNC3 (path, &st) < 0) {
        FUNC1 ("Failed to stat %s: %s.\n", path, FUNC4(errno));
        return -1;
    }

    times.actime = st.st_atime;
    times.modtime = (time_t)mtime;

    return FUNC5 (path, &times);
#else
    wchar_t *wpath = win32_long_path (path);
    int ret = 0;

    if (set_utc_file_time (path, wpath, mtime) < 0)
        ret = -1;

    g_free (wpath);
    return ret;
#endif
}