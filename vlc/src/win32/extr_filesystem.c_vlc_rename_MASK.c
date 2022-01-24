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
 scalar_t__ EACCES ; 
 scalar_t__ EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int FUNC4 (const char *oldpath, const char *newpath)
{
    int ret = -1;

    wchar_t *wold = FUNC3 (oldpath), *wnew = FUNC3 (newpath);
    if (wold == NULL || wnew == NULL)
        goto out;

    if (FUNC1 (wold, wnew) && (errno == EACCES || errno == EEXIST))
    {   /* Windows does not allow atomic file replacement */
        if (FUNC0 (wnew))
        {
            errno = EACCES; /* restore errno */
            goto out;
        }
        if (FUNC1 (wold, wnew))
            goto out;
    }
    ret = 0;
out:
    FUNC2 (wnew);
    FUNC2 (wold);
    return ret;
}