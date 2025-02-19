
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* link; scalar_t__ section; TYPE_2__* network; } ;
struct TYPE_9__ {scalar_t__ n_static_nexthops; int nexthops_by_section; int static_nexthops; } ;
struct TYPE_8__ {int nexthops_foreign; int nexthops; } ;
typedef TYPE_3__ NextHop ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int network_config_section_free (scalar_t__) ;
 int nexthops ;
 int set_remove (int ,TYPE_3__*) ;

void nexthop_free(NextHop *nexthop) {
        if (!nexthop)
                return;

        if (nexthop->network) {
                LIST_REMOVE(nexthops, nexthop->network->static_nexthops, nexthop);

                assert(nexthop->network->n_static_nexthops > 0);
                nexthop->network->n_static_nexthops--;

                if (nexthop->section)
                        hashmap_remove(nexthop->network->nexthops_by_section, nexthop->section);
        }

        network_config_section_free(nexthop->section);

        if (nexthop->link) {
                set_remove(nexthop->link->nexthops, nexthop);
                set_remove(nexthop->link->nexthops_foreign, nexthop);
        }

        free(nexthop);
}
