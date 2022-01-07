
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct btrfs_ioctl_qgroup_assign_args {int assign; int dst; int src; } ;


 int BTRFS_IOC_QGROUP_ASSIGN ;
 int EBUSY ;
 int ENOTTY ;
 int btrfs_is_filesystem (int) ;
 int btrfs_quota_scan_start (int) ;
 int btrfs_quota_scan_wait (int) ;
 int errno ;
 int ioctl (int,int ,struct btrfs_ioctl_qgroup_assign_args*) ;

__attribute__((used)) static int qgroup_assign_or_unassign(int fd, bool b, uint64_t child, uint64_t parent) {
        struct btrfs_ioctl_qgroup_assign_args args = {
                .assign = b,
                .src = child,
                .dst = parent,
        };
        unsigned c;
        int r;

        r = btrfs_is_filesystem(fd);
        if (r < 0)
                return r;
        if (r == 0)
                return -ENOTTY;

        for (c = 0;; c++) {
                r = ioctl(fd, BTRFS_IOC_QGROUP_ASSIGN, &args);
                if (r < 0) {
                        if (errno == EBUSY && c < 10) {
                                (void) btrfs_quota_scan_wait(fd);
                                continue;
                        }

                        return -errno;
                }

                if (r == 0)
                        return 0;



                (void) btrfs_quota_scan_start(fd);
                return 1;
        }
}
