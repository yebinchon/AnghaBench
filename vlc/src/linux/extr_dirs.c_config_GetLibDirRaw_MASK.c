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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* LIBDIR ; 
 scalar_t__ config_GetLibDir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,void**,void**) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static char *FUNC8(void)
{
    char *path = NULL;
    /* Find the path to libvlc (i.e. ourselves) */
    FILE *maps = FUNC1 ("/proc/self/maps", "rte");
    if (maps == NULL)
        goto error;

    char *line = NULL;
    size_t linelen = 0;
    uintptr_t needle = (uintptr_t)config_GetLibDir;

    for (;;)
    {
        ssize_t len = FUNC3 (&line, &linelen, maps);
        if (len == -1)
            break;

        void *start, *end;
        if (FUNC4 (line, "%p-%p", &start, &end) < 2)
            continue;
        /* This mapping contains the address of this function. */
        if (needle < (uintptr_t)start || (uintptr_t)end <= needle)
            continue;

        char *dir = FUNC5 (line, '/');
        if (dir == NULL)
            continue;

        char *file = FUNC7 (line, '/');
        if (end == NULL)
            continue;
        *file = '\0';

        path = FUNC6(dir);
        break;
    }

    FUNC2 (line);
    FUNC0 (maps);
error:
    if (path == NULL)
        path = FUNC6(LIBDIR);
    return path;
}