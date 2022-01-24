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
 int /*<<< orphan*/  BTRFS_IOC_QUOTA_RESCAN_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

int FUNC2(int fd) {
        FUNC0(fd >= 0);

        if (FUNC1(fd, BTRFS_IOC_QUOTA_RESCAN_WAIT) < 0)
                return -errno;

        return 0;
}