
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bond; } ;
struct TYPE_6__ {scalar_t__ iftype; TYPE_2__* network; } ;
typedef TYPE_1__ Link ;


 scalar_t__ ARPHRD_CAN ;
 int assert (TYPE_1__*) ;
 scalar_t__ link_ipv6ll_enabled (TYPE_1__*) ;
 scalar_t__ network_has_static_ipv6_configurations (TYPE_2__*) ;
 int socket_ipv6_is_supported () ;

__attribute__((used)) static bool link_ipv6_enabled(Link *link) {
        assert(link);

        if (!socket_ipv6_is_supported())
                return 0;

        if (link->network->bond)
                return 0;

        if (link->iftype == ARPHRD_CAN)
                return 0;


        if (link_ipv6ll_enabled(link))
                return 1;

        if (network_has_static_ipv6_configurations(link->network))
                return 1;

        return 0;
}
