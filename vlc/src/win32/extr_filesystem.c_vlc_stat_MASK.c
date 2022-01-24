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
struct stat {int dummy; } ;
struct _stati64 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

int FUNC4 (const char *filename, struct stat *buf)
{
    wchar_t *wpath = FUNC3 (filename);
    if (wpath == NULL)
        return -1;

    FUNC2 (sizeof (*buf) == sizeof (struct _stati64),
                   "Mismatched struct stat definition.");

    int ret = FUNC0 (wpath, buf);
    FUNC1 (wpath);
    return ret;
}