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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (const char *dirname, mode_t mode)
{
    char *locname = FUNC0 (dirname);
    if (FUNC3(locname == NULL))
    {
        errno = ENOENT;
        return -1;
    }

    int res = FUNC2 (locname, mode);
    FUNC1 (locname);
    return res;
}