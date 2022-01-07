
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* link; scalar_t__ section; TYPE_2__* network; } ;
struct TYPE_9__ {scalar_t__ n_neighbors; int neighbors_by_section; int neighbors; } ;
struct TYPE_8__ {int neighbors_foreign; int neighbors; } ;
typedef TYPE_3__ Neighbor ;


 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int neighbors ;
 int network_config_section_free (scalar_t__) ;
 int set_remove (int ,TYPE_3__*) ;

void neighbor_free(Neighbor *neighbor) {
        if (!neighbor)
                return;

        if (neighbor->network) {
                LIST_REMOVE(neighbors, neighbor->network->neighbors, neighbor);
                assert(neighbor->network->n_neighbors > 0);
                neighbor->network->n_neighbors--;

                if (neighbor->section)
                        hashmap_remove(neighbor->network->neighbors_by_section, neighbor->section);
        }

        network_config_section_free(neighbor->section);

        if (neighbor->link) {
                set_remove(neighbor->link->neighbors, neighbor);
                set_remove(neighbor->link->neighbors_foreign, neighbor);
        }

        free(neighbor);
}
