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
struct btrfs_ioctl_quota_rescan_args {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_IOC_QUOTA_RESCAN_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct btrfs_ioctl_quota_rescan_args*) ; 

int FUNC2(int fd) {
        struct btrfs_ioctl_quota_rescan_args args = {};

        FUNC0(fd >= 0);

        if (FUNC1(fd, BTRFS_IOC_QUOTA_RESCAN_STATUS, &args) < 0)
                return -errno;

        return !!args.flags;
}