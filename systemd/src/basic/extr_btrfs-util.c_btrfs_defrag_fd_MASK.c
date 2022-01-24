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
 int /*<<< orphan*/  BTRFS_IOC_DEFRAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(int fd) {
        int r;

        FUNC0(fd >= 0);

        r = FUNC1(fd);
        if (r < 0)
                return r;

        if (FUNC2(fd, BTRFS_IOC_DEFRAG, NULL) < 0)
                return -errno;

        return 0;
}