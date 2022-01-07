
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct btrfs_ioctl_qgroup_create_args {int create; int qgroupid; } ;


 int BTRFS_IOC_QGROUP_CREATE ;
 int EBUSY ;
 int EINVAL ;
 int ENOPROTOOPT ;
 int ENOTTY ;
 int btrfs_is_filesystem (int) ;
 int btrfs_quota_scan_wait (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,struct btrfs_ioctl_qgroup_create_args*) ;

__attribute__((used)) static int qgroup_create_or_destroy(int fd, bool b, uint64_t qgroupid) {

        struct btrfs_ioctl_qgroup_create_args args = {
                .create = b,
                .qgroupid = qgroupid,
        };
        unsigned c;
        int r;

        r = btrfs_is_filesystem(fd);
        if (r < 0)
                return r;
        if (r == 0)
                return -ENOTTY;

        for (c = 0;; c++) {
                if (ioctl(fd, BTRFS_IOC_QGROUP_CREATE, &args) < 0) {


                        if (errno == EINVAL)
                                return -ENOPROTOOPT;

                        if (errno == EBUSY && c < 10) {
                                (void) btrfs_quota_scan_wait(fd);
                                continue;
                        }

                        return -errno;
                }

                break;
        }

        return 0;
}
