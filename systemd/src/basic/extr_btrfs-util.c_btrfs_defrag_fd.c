
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTRFS_IOC_DEFRAG ;
 int assert (int) ;
 int errno ;
 int fd_verify_regular (int) ;
 scalar_t__ ioctl (int,int ,int *) ;

int btrfs_defrag_fd(int fd) {
        int r;

        assert(fd >= 0);

        r = fd_verify_regular(fd);
        if (r < 0)
                return r;

        if (ioctl(fd, BTRFS_IOC_DEFRAG, ((void*)0)) < 0)
                return -errno;

        return 0;
}
