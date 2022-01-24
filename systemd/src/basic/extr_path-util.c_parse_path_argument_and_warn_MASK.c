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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (int,char*,char const*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int FUNC7(const char *path, bool suppress_root, char **arg) {
        char *p;
        int r;

        /*
         * This function is intended to be used in command line
         * parsers, to handle paths that are passed in. It makes the
         * path absolute, and reduces it to NULL if omitted or
         * root (the latter optionally).
         *
         * NOTE THAT THIS WILL FREE THE PREVIOUS ARGUMENT POINTER ON
         * SUCCESS! Hence, do not pass in uninitialized pointers.
         */

        if (FUNC2(path)) {
                *arg = FUNC4(*arg);
                return 0;
        }

        r = FUNC5(path, &p);
        if (r < 0)
                return FUNC3(r, "Failed to parse path \"%s\" and make it absolute: %m", path);

        FUNC6(p, false);
        if (suppress_root && FUNC0(p))
                p = FUNC4(p);

        FUNC1(*arg, p);

        return 0;
}