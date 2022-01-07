
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ original_pid; } ;
typedef TYPE_1__ sd_netlink ;


 int assert (TYPE_1__ const*) ;
 scalar_t__ getpid_cached () ;

__attribute__((used)) static bool rtnl_pid_changed(const sd_netlink *rtnl) {
        assert(rtnl);




        return rtnl->original_pid != getpid_cached();
}
