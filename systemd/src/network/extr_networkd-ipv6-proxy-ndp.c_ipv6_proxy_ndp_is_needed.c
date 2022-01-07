
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* network; } ;
struct TYPE_5__ {scalar_t__ ipv6_proxy_ndp; scalar_t__ n_ipv6_proxy_ndp_addresses; } ;
typedef TYPE_2__ Link ;


 int IFF_LOOPBACK ;
 int assert (TYPE_2__*) ;

__attribute__((used)) static bool ipv6_proxy_ndp_is_needed(Link *link) {
        assert(link);

        if (link->flags & IFF_LOOPBACK)
                return 0;

        if (!link->network)
                return 0;

        if (link->network->ipv6_proxy_ndp >= 0)
                return link->network->ipv6_proxy_ndp;

        if (link->network->n_ipv6_proxy_ndp_addresses == 0)
                return 0;

        return 1;
}
