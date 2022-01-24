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
typedef  int /*<<< orphan*/  uint64_t ;
struct btrfs_ioctl_ino_lookup_args {int /*<<< orphan*/  treeid; int /*<<< orphan*/  objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_IOC_INO_LOOKUP ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct btrfs_ioctl_ino_lookup_args*) ; 

int FUNC3(int fd, uint64_t *ret) {
        struct btrfs_ioctl_ino_lookup_args args = {
                .objectid = BTRFS_FIRST_FREE_OBJECTID
        };
        int r;

        FUNC0(fd >= 0);
        FUNC0(*ret);

        r = FUNC1(fd);
        if (r < 0)
                return r;
        if (!r)
                return -ENOTTY;

        if (FUNC2(fd, BTRFS_IOC_INO_LOOKUP, &args) < 0)
                return -errno;

        *ret = args.treeid;
        return 0;
}