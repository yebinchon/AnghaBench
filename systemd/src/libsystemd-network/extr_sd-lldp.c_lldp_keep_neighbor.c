
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ttl; int enabled_capabilities; int capability_mask; scalar_t__ has_capabilities; int source_address; int filter_address; } ;
typedef TYPE_1__ sd_lldp_neighbor ;
typedef TYPE_1__ sd_lldp ;


 int assert (TYPE_1__*) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 int ether_addr_is_null (int *) ;

__attribute__((used)) static bool lldp_keep_neighbor(sd_lldp *lldp, sd_lldp_neighbor *n) {
        assert(lldp);
        assert(n);


        if (n->ttl <= 0)
                return 0;


        if (!ether_addr_is_null(&lldp->filter_address) &&
            ether_addr_equal(&lldp->filter_address, &n->source_address))
                return 0;



        if (n->has_capabilities &&
            (n->enabled_capabilities & lldp->capability_mask) == 0)
                return 0;


        return 1;
}
