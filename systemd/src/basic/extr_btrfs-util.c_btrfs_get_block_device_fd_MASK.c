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
typedef  int uint64_t ;
struct stat {scalar_t__ st_rdev; int /*<<< orphan*/  st_mode; } ;
struct btrfs_ioctl_fs_info_args {int num_devices; int max_id; int devid; scalar_t__ path; } ;
struct btrfs_ioctl_dev_info_args {int num_devices; int max_id; int devid; scalar_t__ path; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_IOC_DEV_INFO ; 
 int /*<<< orphan*/  BTRFS_IOC_FS_INFO ; 
 int ENODEV ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct btrfs_ioctl_fs_info_args*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 

int FUNC6(int fd, dev_t *dev) {
        struct btrfs_ioctl_fs_info_args fsi = {};
        uint64_t id;
        int r;

        FUNC1(fd >= 0);
        FUNC1(dev);

        r = FUNC2(fd);
        if (r < 0)
                return r;
        if (!r)
                return -ENOTTY;

        if (FUNC3(fd, BTRFS_IOC_FS_INFO, &fsi) < 0)
                return -errno;

        /* We won't do this for btrfs RAID */
        if (fsi.num_devices != 1) {
                *dev = 0;
                return 0;
        }

        for (id = 1; id <= fsi.max_id; id++) {
                struct btrfs_ioctl_dev_info_args di = {
                        .devid = id,
                };
                struct stat st;

                if (FUNC3(fd, BTRFS_IOC_DEV_INFO, &di) < 0) {
                        if (errno == ENODEV)
                                continue;

                        return -errno;
                }

                if (FUNC5((char*) di.path, &st) < 0)
                        return -errno;

                if (!FUNC0(st.st_mode))
                        return -ENODEV;

                if (FUNC4(st.st_rdev) == 0)
                        return -ENODEV;

                *dev = st.st_rdev;
                return 1;
        }

        return -ENODEV;
}