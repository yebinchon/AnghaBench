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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  FS_IOC_GETFLAGS ; 
 int /*<<< orphan*/  FS_IOC_SETFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC5(int fd, unsigned value, unsigned mask, unsigned *previous) {
        unsigned old_attr, new_attr;
        struct stat st;

        FUNC2(fd >= 0);

        if (FUNC3(fd, &st) < 0)
                return -errno;

        /* Explicitly check whether this is a regular file or
         * directory. If it is anything else (such as a device node or
         * fifo), then the ioctl will not hit the file systems but
         * possibly drivers, where the ioctl might have different
         * effects. Notably, DRM is using the same ioctl() number. */

        if (!FUNC0(st.st_mode) && !FUNC1(st.st_mode))
                return -ENOTTY;

        if (mask == 0 && !previous)
                return 0;

        if (FUNC4(fd, FS_IOC_GETFLAGS, &old_attr) < 0)
                return -errno;

        new_attr = (old_attr & ~mask) | (value & mask);
        if (new_attr == old_attr) {
                if (previous)
                        *previous = old_attr;
                return 0;
        }

        if (FUNC4(fd, FS_IOC_SETFLAGS, &new_attr) < 0)
                return -errno;

        if (previous)
                *previous = old_attr;

        return 1;
}