
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; TYPE_1__* network; } ;
struct TYPE_5__ {int ip_forward; } ;
typedef TYPE_2__ Link ;


 int ADDRESS_FAMILY_IPV6 ;
 int IFF_LOOPBACK ;
 int _ADDRESS_FAMILY_INVALID ;
 int assert (TYPE_2__*) ;
 int socket_ipv6_is_supported () ;

__attribute__((used)) static bool link_ipv6_forward_enabled(Link *link) {
        assert(link);

        if (!socket_ipv6_is_supported())
                return 0;

        if (link->flags & IFF_LOOPBACK)
                return 0;

        if (!link->network)
                return 0;

        if (link->network->ip_forward == _ADDRESS_FAMILY_INVALID)
                return 0;

        return link->network->ip_forward & ADDRESS_FAMILY_IPV6;
}
