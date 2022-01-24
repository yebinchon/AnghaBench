#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int st_mode; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; struct timespec st_mtim; int /*<<< orphan*/  st_mtime; } ;
typedef  TYPE_1__ stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  UTIME_NOW ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,struct utimbuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,struct timespec*,int /*<<< orphan*/ ) ; 

int FUNC6(const char *filename, stat_t *statbuf)
{
    int res = 0;

    if (!FUNC0(filename))
        return -1;

    /* set access and modification times */
#if defined(_WIN32) || (PLATFORM_POSIX_VERSION < 200809L)
    {
        struct utimbuf timebuf;
        timebuf.actime = FUNC3(NULL);
        timebuf.modtime = statbuf->st_mtime;
        res += FUNC4(filename, &timebuf);
    }
#else
    {
        /* (atime, mtime) */
        struct timespec timebuf[2] = { {0, UTIME_NOW} };
        timebuf[1] = statbuf->st_mtim;
        res += utimensat(AT_FDCWD, filename, timebuf, 0);
    }
#endif

#if !defined(_WIN32)
    res += FUNC2(filename, statbuf->st_uid, statbuf->st_gid);  /* Copy ownership */
#endif

    res += FUNC1(filename, statbuf->st_mode & 07777);  /* Copy file permissions */

    errno = 0;
    return -res; /* number of errors is returned */
}