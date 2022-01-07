
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int expire; TYPE_1__* link; scalar_t__ section; TYPE_2__* network; } ;
struct TYPE_9__ {scalar_t__ n_static_routes; int routes_by_section; int static_routes; } ;
struct TYPE_8__ {int routes_foreign; int routes; } ;
typedef TYPE_3__ Route ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int network_config_section_free (scalar_t__) ;
 int routes ;
 int sd_event_source_unref (int ) ;
 int set_remove (int ,TYPE_3__*) ;

void route_free(Route *route) {
        if (!route)
                return;

        if (route->network) {
                LIST_REMOVE(routes, route->network->static_routes, route);

                assert(route->network->n_static_routes > 0);
                route->network->n_static_routes--;

                if (route->section)
                        hashmap_remove(route->network->routes_by_section, route->section);
        }

        network_config_section_free(route->section);

        if (route->link) {
                set_remove(route->link->routes, route);
                set_remove(route->link->routes_foreign, route);
        }

        sd_event_source_unref(route->expire);

        free(route);
}
