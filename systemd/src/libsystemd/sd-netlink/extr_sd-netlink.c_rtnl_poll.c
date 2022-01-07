
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
typedef scalar_t__ uint64_t ;
struct timespec {int dummy; } ;
struct pollfd {int events; int fd; } ;
struct TYPE_6__ {int fd; } ;
typedef TYPE_1__ sd_netlink ;


 int CLOCK_MONOTONIC ;
 int POLLIN ;
 scalar_t__ USEC_INFINITY ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ now (int ) ;
 int ppoll (struct pollfd*,int,int *,int *) ;
 int sd_netlink_get_events (TYPE_1__*) ;
 int sd_netlink_get_timeout (TYPE_1__*,scalar_t__*) ;
 int * timespec_store (struct timespec*,scalar_t__) ;

__attribute__((used)) static int rtnl_poll(sd_netlink *rtnl, bool need_more, uint64_t timeout_usec) {
        struct pollfd p[1] = {};
        struct timespec ts;
        usec_t m = USEC_INFINITY;
        int r, e;

        assert(rtnl);

        e = sd_netlink_get_events(rtnl);
        if (e < 0)
                return e;

        if (need_more)


                e |= POLLIN;
        else {
                usec_t until;



                r = sd_netlink_get_timeout(rtnl, &until);
                if (r < 0)
                        return r;
                if (r > 0) {
                        usec_t nw;
                        nw = now(CLOCK_MONOTONIC);
                        m = until > nw ? until - nw : 0;
                }
        }

        if (timeout_usec != (uint64_t) -1 && (m == (uint64_t) -1 || timeout_usec < m))
                m = timeout_usec;

        p[0].fd = rtnl->fd;
        p[0].events = e;

        r = ppoll(p, 1, m == (uint64_t) -1 ? ((void*)0) : timespec_store(&ts, m), ((void*)0));
        if (r < 0)
                return -errno;

        return r > 0 ? 1 : 0;
}
