
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* network; } ;
struct TYPE_4__ {int router_prefix_delegation; } ;
typedef TYPE_2__ Link ;


 int IN_SET (int ,int ,int ) ;
 int RADV_PREFIX_DELEGATION_BOTH ;
 int RADV_PREFIX_DELEGATION_DHCP6 ;

__attribute__((used)) static bool dhcp6_get_prefix_delegation(Link *link) {
        if (!link->network)
                return 0;

        return IN_SET(link->network->router_prefix_delegation,
                      RADV_PREFIX_DELEGATION_DHCP6,
                      RADV_PREFIX_DELEGATION_BOTH);
}
