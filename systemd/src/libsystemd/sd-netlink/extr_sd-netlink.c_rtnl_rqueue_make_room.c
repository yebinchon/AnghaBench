
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rqueue_size; int rqueue_allocated; int rqueue; } ;
typedef TYPE_1__ sd_netlink ;


 int ENOBUFS ;
 int ENOMEM ;
 int GREEDY_REALLOC (int ,int ,scalar_t__) ;
 scalar_t__ RTNL_RQUEUE_MAX ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int log_debug_errno (int ,char*,scalar_t__) ;

int rtnl_rqueue_make_room(sd_netlink *rtnl) {
        assert(rtnl);

        if (rtnl->rqueue_size >= RTNL_RQUEUE_MAX)
                return log_debug_errno(SYNTHETIC_ERRNO(ENOBUFS),
                                       "rtnl: exhausted the read queue size (%d)",
                                       RTNL_RQUEUE_MAX);

        if (!GREEDY_REALLOC(rtnl->rqueue, rtnl->rqueue_allocated, rtnl->rqueue_size + 1))
                return -ENOMEM;

        return 0;
}
