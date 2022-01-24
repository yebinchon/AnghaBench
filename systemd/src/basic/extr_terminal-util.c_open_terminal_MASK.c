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
 int EIO ; 
 int ENOTTY ; 
 int O_CREAT ; 
 int USEC_PER_MSEC ; 
 int errno ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(const char *name, int mode) {
        unsigned c = 0;
        int fd;

        /*
         * If a TTY is in the process of being closed opening it might
         * cause EIO. This is horribly awful, but unlikely to be
         * changed in the kernel. Hence we work around this problem by
         * retrying a couple of times.
         *
         * https://bugs.launchpad.net/ubuntu/+source/linux/+bug/554172/comments/245
         */

        if (mode & O_CREAT)
                return -EINVAL;

        for (;;) {
                fd = FUNC1(name, mode, 0);
                if (fd >= 0)
                        break;

                if (errno != EIO)
                        return -errno;

                /* Max 1s in total */
                if (c >= 20)
                        return -errno;

                FUNC3(50 * USEC_PER_MSEC);
                c++;
        }

        if (FUNC0(fd) <= 0) {
                FUNC2(fd);
                return -ENOTTY;
        }

        return fd;
}