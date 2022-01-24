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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ errno ; 
 int FUNC1 (scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 char const* FUNC4 (char const*,char const*,...) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

int FUNC6(const char *dir, const char *dst, const char *dep_type, const char *src) {
        /* Adds a symlink from <dst>.<dep_type>/ to <src> (if src is absolute)
         * or ../<src> (otherwise). */

        const char *from, *to;

        from = FUNC3(src) ? src : FUNC4("../", src);
        to = FUNC4(dir, "/", dst, ".", dep_type, "/", FUNC0(src));

        FUNC2(to, 0755);
        if (FUNC5(from, to) < 0)
                if (errno != EEXIST)
                        return FUNC1(errno, "Failed to create symlink \"%s\": %m", to);

        return 0;
}