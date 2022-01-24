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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  _PC_PATH_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 long FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,struct stat*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

char *FUNC8 (void)
{
    /* Try $PWD */
    const char *pwd = FUNC3 ("PWD");
    if (pwd != NULL)
    {
        struct stat s1, s2;
        /* Make sure $PWD is correct */
        if (FUNC6 (pwd, &s1) == 0 && FUNC6 (".", &s2) == 0
         && s1.st_dev == s2.st_dev && s1.st_ino == s2.st_ino)
            return FUNC0 (pwd);
    }

    /* Otherwise iterate getcwd() until the buffer is big enough */
    long path_max = FUNC5 (".", _PC_PATH_MAX);
    size_t size = (path_max == -1 || path_max > 4096) ? 4096 : path_max;

    for (;; size *= 2)
    {
        char *buf = FUNC4 (size);
        if (FUNC7(buf == NULL))
            break;

        if (FUNC2 (buf, size) != NULL)
        {
            char *ret = FUNC0 (buf);
            FUNC1 (buf);
            return ret; /* success */
        }
        FUNC1 (buf);

        if (errno != ERANGE)
            break;
    }
    return NULL;
}