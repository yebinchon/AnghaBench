
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTRFS_IOC_CLONE ;
 int assert (int) ;
 int errno ;
 int fd_verify_regular (int) ;
 scalar_t__ ioctl (int,int ,int) ;

int btrfs_reflink(int infd, int outfd) {
        int r;

        assert(infd >= 0);
        assert(outfd >= 0);



        r = fd_verify_regular(outfd);
        if (r < 0)
                return r;

        if (ioctl(outfd, BTRFS_IOC_CLONE, infd) < 0)
                return -errno;

        return 0;
}
