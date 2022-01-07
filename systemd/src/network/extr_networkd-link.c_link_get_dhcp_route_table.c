
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* network; } ;
struct TYPE_5__ {int dhcp_route_table; scalar_t__ dhcp_route_table_set; } ;
typedef TYPE_2__ Link ;


 int link_get_vrf_table (TYPE_2__*) ;

uint32_t link_get_dhcp_route_table(Link *link) {


        if (link->network->dhcp_route_table_set)
                return link->network->dhcp_route_table;
        return link_get_vrf_table(link);
}
