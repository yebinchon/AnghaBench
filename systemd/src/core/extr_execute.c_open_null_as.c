
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_NOCTTY ;
 int assert (int) ;
 int errno ;
 int move_fd (int,int,int) ;
 int open (char*,int) ;

__attribute__((used)) static int open_null_as(int flags, int nfd) {
        int fd;

        assert(nfd >= 0);

        fd = open("/dev/null", flags|O_NOCTTY);
        if (fd < 0)
                return -errno;

        return move_fd(fd, nfd, 0);
}
