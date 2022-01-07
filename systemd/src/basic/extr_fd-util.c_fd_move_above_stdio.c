
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_DUPFD ;
 int F_DUPFD_CLOEXEC ;
 int F_GETFD ;
 int PROTECT_ERRNO ;
 int assert (int) ;
 int close (int) ;
 int fcntl (int,int ,int) ;

int fd_move_above_stdio(int fd) {
        int flags, copy;
        PROTECT_ERRNO;
        if (fd < 0 || fd > 2)
                return fd;

        flags = fcntl(fd, F_GETFD, 0);
        if (flags < 0)
                return fd;

        if (flags & FD_CLOEXEC)
                copy = fcntl(fd, F_DUPFD_CLOEXEC, 3);
        else
                copy = fcntl(fd, F_DUPFD, 3);
        if (copy < 0)
                return fd;

        assert(copy > 2);

        (void) close(fd);
        return copy;
}
