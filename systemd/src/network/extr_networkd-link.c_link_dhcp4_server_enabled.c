
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ iftype; TYPE_1__* network; } ;
struct TYPE_5__ {int dhcp_server; scalar_t__ bond; } ;
typedef TYPE_2__ Link ;


 scalar_t__ ARPHRD_CAN ;
 int IFF_LOOPBACK ;
 int assert (TYPE_2__*) ;

__attribute__((used)) static bool link_dhcp4_server_enabled(Link *link) {
        assert(link);

        if (link->flags & IFF_LOOPBACK)
                return 0;

        if (!link->network)
                return 0;

        if (link->network->bond)
                return 0;

        if (link->iftype == ARPHRD_CAN)
                return 0;

        return link->network->dhcp_server;
}
