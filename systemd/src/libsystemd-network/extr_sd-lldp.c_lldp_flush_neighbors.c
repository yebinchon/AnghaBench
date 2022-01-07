
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int neighbor_by_id; } ;
typedef TYPE_1__ sd_lldp ;


 int assert (TYPE_1__*) ;
 int hashmap_clear (int ) ;

__attribute__((used)) static void lldp_flush_neighbors(sd_lldp *lldp) {
        assert(lldp);

        hashmap_clear(lldp->neighbor_by_id);
}
