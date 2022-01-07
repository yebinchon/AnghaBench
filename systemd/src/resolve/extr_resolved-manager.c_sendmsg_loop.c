
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;


 int EAGAIN ;
 int EINTR ;
 int ETIMEDOUT ;
 int POLLOUT ;
 int SEND_TIMEOUT_USEC ;
 int assert (int) ;
 int errno ;
 int fd_wait_for_event (int,int ,int ) ;
 scalar_t__ sendmsg (int,struct msghdr*,int) ;

__attribute__((used)) static int sendmsg_loop(int fd, struct msghdr *mh, int flags) {
        int r;

        assert(fd >= 0);
        assert(mh);

        for (;;) {
                if (sendmsg(fd, mh, flags) >= 0)
                        return 0;

                if (errno == EINTR)
                        continue;

                if (errno != EAGAIN)
                        return -errno;

                r = fd_wait_for_event(fd, POLLOUT, SEND_TIMEOUT_USEC);
                if (r < 0)
                        return r;
                if (r == 0)
                        return -ETIMEDOUT;
        }
}
