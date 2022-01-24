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

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*) ; 

int FUNC3 (const char *oldpath, const char *newpath)
{
    const char *lo = FUNC0 (oldpath);
    if (lo == NULL)
        goto error;

    const char *ln = FUNC0 (newpath);
    if (ln == NULL)
    {
        FUNC1 (lo);
error:
        errno = ENOENT;
        return -1;
    }

    int ret = FUNC2 (lo, ln);
    FUNC1 (lo);
    FUNC1 (ln);
    return ret;
}