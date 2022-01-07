
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bound_by_links; int bound_to_links; } ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int hashmap_isempty (int ) ;
 int link_dirty (TYPE_1__*) ;
 int link_free_bound_by_list (TYPE_1__*) ;
 int link_free_bound_to_list (TYPE_1__*) ;

__attribute__((used)) static void link_free_carrier_maps(Link *link) {
        bool list_updated = 0;

        assert(link);

        if (!hashmap_isempty(link->bound_to_links)) {
                link_free_bound_to_list(link);
                list_updated = 1;
        }

        if (!hashmap_isempty(link->bound_by_links)) {
                link_free_bound_by_list(link);
                list_updated = 1;
        }

        if (list_updated)
                link_dirty(link);

        return;
}
