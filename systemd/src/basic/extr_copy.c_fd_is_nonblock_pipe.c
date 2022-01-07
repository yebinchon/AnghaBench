
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int FD_IS_BLOCKING_PIPE ;
 int FD_IS_NONBLOCKING_PIPE ;
 int FD_IS_NO_PIPE ;
 scalar_t__ FLAGS_SET (int,int ) ;
 int F_GETFL ;
 int O_NONBLOCK ;
 int S_ISFIFO (int ) ;
 int errno ;
 int fcntl (int,int ) ;
 scalar_t__ fstat (int,struct stat*) ;

__attribute__((used)) static int fd_is_nonblock_pipe(int fd) {
        struct stat st;
        int flags;



        if (fstat(fd, &st) < 0)
                return -errno;

        if (!S_ISFIFO(st.st_mode))
                return FD_IS_NO_PIPE;

        flags = fcntl(fd, F_GETFL);
        if (flags < 0)
                return -errno;

        return FLAGS_SET(flags, O_NONBLOCK) ? FD_IS_NONBLOCKING_PIPE : FD_IS_BLOCKING_PIPE;
}
