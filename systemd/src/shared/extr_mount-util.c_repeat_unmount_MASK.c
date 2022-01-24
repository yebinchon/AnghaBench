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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int errno ; 
 scalar_t__ FUNC1 (char const*,int) ; 

int FUNC2(const char *path, int flags) {
        bool done = false;

        FUNC0(path);

        /* If there are multiple mounts on a mount point, this
         * removes them all */

        for (;;) {
                if (FUNC1(path, flags) < 0) {

                        if (errno == EINVAL)
                                return done;

                        return -errno;
                }

                done = true;
        }
}