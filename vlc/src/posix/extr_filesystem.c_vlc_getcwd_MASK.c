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
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  _PC_PATH_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,size_t) ; 
 char* FUNC2 (size_t) ; 
 long FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

char *FUNC5 (void)
{
    long path_max = FUNC3 (".", _PC_PATH_MAX);
    size_t size = (path_max == -1 || path_max > 4096) ? 4096 : path_max;

    for (;; size *= 2)
    {
        char *buf = FUNC2 (size);
        if (FUNC4(buf == NULL))
            break;

        if (FUNC1 (buf, size) != NULL)
            return buf;
        FUNC0 (buf);

        if (errno != ERANGE)
            break;
    }
    return NULL;
}