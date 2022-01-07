
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct btrfs_ioctl_clone_range_args {int src_fd; scalar_t__ src_offset; scalar_t__ src_length; scalar_t__ dest_offset; } ;


 int BTRFS_IOC_CLONE_RANGE ;
 int assert (int) ;
 int errno ;
 int fd_verify_regular (int) ;
 scalar_t__ ioctl (int,int ,struct btrfs_ioctl_clone_range_args*) ;

int btrfs_clone_range(int infd, uint64_t in_offset, int outfd, uint64_t out_offset, uint64_t sz) {
        struct btrfs_ioctl_clone_range_args args = {
                .src_fd = infd,
                .src_offset = in_offset,
                .src_length = sz,
                .dest_offset = out_offset,
        };
        int r;

        assert(infd >= 0);
        assert(outfd >= 0);
        assert(sz > 0);

        r = fd_verify_regular(outfd);
        if (r < 0)
                return r;

        if (ioctl(outfd, BTRFS_IOC_CLONE_RANGE, &args) < 0)
                return -errno;

        return 0;
}
