
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int flags; TYPE_1__* network; } ;
struct TYPE_7__ {scalar_t__ ipv6_accept_ra; } ;
typedef TYPE_2__ Link ;


 int IFF_LOOPBACK ;
 int assert (TYPE_2__*) ;
 int link_ipv6_forward_enabled (TYPE_2__*) ;
 int link_ipv6ll_enabled (TYPE_2__*) ;
 int socket_ipv6_is_supported () ;

__attribute__((used)) static bool link_ipv6_accept_ra_enabled(Link *link) {
        assert(link);

        if (!socket_ipv6_is_supported())
                return 0;

        if (link->flags & IFF_LOOPBACK)
                return 0;

        if (!link->network)
                return 0;

        if (!link_ipv6ll_enabled(link))
                return 0;





        if (link->network->ipv6_accept_ra < 0)

                return !link_ipv6_forward_enabled(link);
        else if (link->network->ipv6_accept_ra > 0)

                return 1;
        else

                return 0;
}
