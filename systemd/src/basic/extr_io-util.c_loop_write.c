
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;


 int EAGAIN ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int POLLOUT ;
 scalar_t__ SSIZE_MAX ;
 int USEC_INFINITY ;
 scalar_t__ _unlikely_ (int) ;
 int assert (int) ;
 int errno ;
 int fd_wait_for_event (int,int ,int ) ;
 scalar_t__ write (int,int const*,size_t) ;

int loop_write(int fd, const void *buf, size_t nbytes, bool do_poll) {
        const uint8_t *p = buf;

        assert(fd >= 0);
        assert(buf);

        if (_unlikely_(nbytes > (size_t) SSIZE_MAX))
                return -EINVAL;

        do {
                ssize_t k;

                k = write(fd, p, nbytes);
                if (k < 0) {
                        if (errno == EINTR)
                                continue;

                        if (errno == EAGAIN && do_poll) {




                                (void) fd_wait_for_event(fd, POLLOUT, USEC_INFINITY);
                                continue;
                        }

                        return -errno;
                }

                if (_unlikely_(nbytes > 0 && k == 0))
                        return -EIO;

                assert((size_t) k <= nbytes);

                p += k;
                nbytes -= k;
        } while (nbytes > 0);

        return 0;
}
