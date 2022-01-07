
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* manager; TYPE_1__* network; } ;
struct TYPE_6__ {int dhcp4_prefix_root_cannot_set_table; } ;
struct TYPE_5__ {scalar_t__ dhcp_route_table; scalar_t__ dhcp_route_table_set; } ;
typedef TYPE_3__ Link ;


 scalar_t__ RT_TABLE_MAIN ;

__attribute__((used)) static bool link_noprefixroute(Link *link) {
        return link->network->dhcp_route_table_set &&
                link->network->dhcp_route_table != RT_TABLE_MAIN &&
                !link->manager->dhcp4_prefix_root_cannot_set_table;
}
