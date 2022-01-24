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
struct btrfs_ioctl_quota_ctl_args {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_IOC_QUOTA_CTL ; 
 int /*<<< orphan*/  BTRFS_QUOTA_CTL_DISABLE ; 
 int /*<<< orphan*/  BTRFS_QUOTA_CTL_ENABLE ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct btrfs_ioctl_quota_ctl_args*) ; 

int FUNC3(int fd, bool b) {
        struct btrfs_ioctl_quota_ctl_args args = {
                .cmd = b ? BTRFS_QUOTA_CTL_ENABLE : BTRFS_QUOTA_CTL_DISABLE,
        };
        int r;

        FUNC0(fd >= 0);

        r = FUNC1(fd);
        if (r < 0)
                return r;
        if (!r)
                return -ENOTTY;

        if (FUNC2(fd, BTRFS_IOC_QUOTA_CTL, &args) < 0)
                return -errno;

        return 0;
}