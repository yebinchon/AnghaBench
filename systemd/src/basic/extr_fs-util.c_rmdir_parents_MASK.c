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
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int FUNC3 (char*) ; 
 size_t FUNC4 (char const*) ; 
 char* FUNC5 (char const*,size_t) ; 

int FUNC6(const char *path, const char *stop) {
        size_t l;
        int r = 0;

        FUNC0(path);
        FUNC0(stop);

        l = FUNC4(path);

        /* Skip trailing slashes */
        while (l > 0 && path[l-1] == '/')
                l--;

        while (l > 0) {
                char *t;

                /* Skip last component */
                while (l > 0 && path[l-1] != '/')
                        l--;

                /* Skip trailing slashes */
                while (l > 0 && path[l-1] == '/')
                        l--;

                if (l <= 0)
                        break;

                t = FUNC5(path, l);
                if (!t)
                        return -ENOMEM;

                if (FUNC2(stop, t)) {
                        FUNC1(t);
                        return 0;
                }

                r = FUNC3(t);
                FUNC1(t);

                if (r < 0)
                        if (errno != ENOENT)
                                return -errno;
        }

        return 0;
}