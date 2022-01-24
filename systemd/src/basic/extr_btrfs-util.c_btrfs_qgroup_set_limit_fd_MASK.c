#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ max_rfer; int /*<<< orphan*/  flags; } ;
struct btrfs_ioctl_qgroup_limit_args {scalar_t__ qgroupid; TYPE_1__ lim; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_IOC_QGROUP_LIMIT ; 
 int /*<<< orphan*/  BTRFS_QGROUP_LIMIT_MAX_RFER ; 
 int EBUSY ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,scalar_t__*) ; 
 int errno ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct btrfs_ioctl_qgroup_limit_args*) ; 

int FUNC5(int fd, uint64_t qgroupid, uint64_t referenced_max) {

        struct btrfs_ioctl_qgroup_limit_args args = {
                .lim.max_rfer = referenced_max,
                .lim.flags = BTRFS_QGROUP_LIMIT_MAX_RFER,
        };
        unsigned c;
        int r;

        FUNC0(fd >= 0);

        if (qgroupid == 0) {
                r = FUNC3(fd, &qgroupid);
                if (r < 0)
                        return r;
        } else {
                r = FUNC1(fd);
                if (r < 0)
                        return r;
                if (!r)
                        return -ENOTTY;
        }

        args.qgroupid = qgroupid;

        for (c = 0;; c++) {
                if (FUNC4(fd, BTRFS_IOC_QGROUP_LIMIT, &args) < 0) {

                        if (errno == EBUSY && c < 10) {
                                (void) FUNC2(fd);
                                continue;
                        }

                        return -errno;
                }

                break;
        }

        return 0;
}