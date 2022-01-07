
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int table; } ;
struct TYPE_6__ {TYPE_1__* network; } ;
struct TYPE_5__ {scalar_t__ vrf; } ;
typedef TYPE_2__ Link ;


 int RT_TABLE_MAIN ;
 TYPE_4__* VRF (scalar_t__) ;

uint32_t link_get_vrf_table(Link *link) {
        return link->network->vrf ? VRF(link->network->vrf)->table : RT_TABLE_MAIN;
}
