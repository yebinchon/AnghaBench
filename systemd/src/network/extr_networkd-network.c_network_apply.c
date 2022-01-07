
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ n_dns; int route_domains; int search_domains; int ntp; int network; } ;
typedef TYPE_1__ Network ;
typedef TYPE_1__ Link ;


 int assert (TYPE_1__*) ;
 int link_dirty (TYPE_1__*) ;
 int network_ref (TYPE_1__*) ;
 int ordered_set_isempty (int ) ;
 int strv_isempty (int ) ;

int network_apply(Network *network, Link *link) {
        assert(network);
        assert(link);

        link->network = network_ref(network);

        if (network->n_dns > 0 ||
            !strv_isempty(network->ntp) ||
            !ordered_set_isempty(network->search_domains) ||
            !ordered_set_isempty(network->route_domains))
                link_dirty(link);

        return 0;
}
