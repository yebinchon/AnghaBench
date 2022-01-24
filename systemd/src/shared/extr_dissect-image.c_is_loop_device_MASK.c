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
struct stat {int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTBLK ; 
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int errno ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *path) {
        char s[FUNC0("/../loop/")];
        struct stat st;

        FUNC3(path);

        if (FUNC4(path, &st) < 0)
                return -errno;

        if (!FUNC1(st.st_mode))
                return -ENOTBLK;

        FUNC5(s, "/loop/", st.st_dev);
        if (FUNC2(s, F_OK) < 0) {
                if (errno != ENOENT)
                        return -errno;

                /* The device itself isn't a loop device, but maybe it's a partition and its parent is? */
                FUNC5(s, "/../loop/", st.st_dev);
                if (FUNC2(s, F_OK) < 0)
                        return errno == ENOENT ? false : -errno;
        }

        return true;
}