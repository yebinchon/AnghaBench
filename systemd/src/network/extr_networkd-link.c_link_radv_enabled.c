
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ router_prefix_delegation; } ;
typedef TYPE_2__ Link ;


 scalar_t__ RADV_PREFIX_DELEGATION_NONE ;
 int assert (TYPE_2__*) ;
 int link_ipv6ll_enabled (TYPE_2__*) ;

__attribute__((used)) static bool link_radv_enabled(Link *link) {
        assert(link);

        if (!link_ipv6ll_enabled(link))
                return 0;

        return link->network->router_prefix_delegation != RADV_PREFIX_DELEGATION_NONE;
}
