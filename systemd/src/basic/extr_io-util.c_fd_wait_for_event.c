
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct timespec {int dummy; } ;
struct pollfd {int fd; int events; int revents; } ;


 int USEC_INFINITY ;
 int errno ;
 int ppoll (struct pollfd*,int,int *,int *) ;
 int * timespec_store (struct timespec*,int ) ;

int fd_wait_for_event(int fd, int event, usec_t t) {

        struct pollfd pollfd = {
                .fd = fd,
                .events = event,
        };

        struct timespec ts;
        int r;

        r = ppoll(&pollfd, 1, t == USEC_INFINITY ? ((void*)0) : timespec_store(&ts, t), ((void*)0));
        if (r < 0)
                return -errno;
        if (r == 0)
                return 0;

        return pollfd.revents;
}
