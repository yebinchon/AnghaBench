
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int EAGAIN ;
 int EINTR ;
 int LINE_MAX ;
 int POLLIN ;
 int errno ;
 int poll (struct pollfd*,int,int ) ;
 scalar_t__ read (int,char*,int) ;

int flush_fd(int fd) {
        struct pollfd pollfd = {
                .fd = fd,
                .events = POLLIN,
        };
        int count = 0;






        for (;;) {
                char buf[LINE_MAX];
                ssize_t l;
                int r;

                r = poll(&pollfd, 1, 0);
                if (r < 0) {
                        if (errno == EINTR)
                                continue;

                        return -errno;

                } else if (r == 0)
                        return count;

                l = read(fd, buf, sizeof(buf));
                if (l < 0) {

                        if (errno == EINTR)
                                continue;

                        if (errno == EAGAIN)
                                return count;

                        return -errno;
                } else if (l == 0)
                        return count;

                count += (int) l;
        }
}
