
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_LOCK ;
 int errno ;
 scalar_t__ lockf (int,int ,int ) ;

__attribute__((used)) static int lockfp(int fd, int *fd_lock) {
        if (lockf(fd, F_LOCK, 0) < 0)
                return -errno;
        *fd_lock = fd;
        return 0;
}
