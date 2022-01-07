
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int assert (int) ;
 scalar_t__ close (int) ;
 int errno ;

int close_nointr(int fd) {
        assert(fd >= 0);

        if (close(fd) >= 0)
                return 0;
        if (errno == EINTR)
                return 0;

        return -errno;
}
