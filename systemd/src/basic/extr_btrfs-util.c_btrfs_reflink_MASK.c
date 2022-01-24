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
 int /*<<< orphan*/  BTRFS_IOC_CLONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 

int FUNC3(int infd, int outfd) {
        int r;

        FUNC0(infd >= 0);
        FUNC0(outfd >= 0);

        /* Make sure we invoke the ioctl on a regular file, so that no device driver accidentally gets it. */

        r = FUNC1(outfd);
        if (r < 0)
                return r;

        if (FUNC2(outfd, BTRFS_IOC_CLONE, infd) < 0)
                return -errno;

        return 0;
}