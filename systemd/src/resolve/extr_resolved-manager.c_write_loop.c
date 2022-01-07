
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EINTR ;
 int ETIMEDOUT ;
 int POLLOUT ;
 int SEND_TIMEOUT_USEC ;
 int assert (void*) ;
 int errno ;
 int fd_wait_for_event (int,int ,int ) ;
 scalar_t__ write (int,void*,size_t) ;

__attribute__((used)) static int write_loop(int fd, void *message, size_t length) {
        int r;

        assert(fd >= 0);
        assert(message);

        for (;;) {
                if (write(fd, message, length) >= 0)
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
