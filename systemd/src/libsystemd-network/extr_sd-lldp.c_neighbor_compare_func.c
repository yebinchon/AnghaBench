
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ sd_lldp_neighbor ;


 int lldp_neighbor_id_compare_func (int *,int *) ;

__attribute__((used)) static int neighbor_compare_func(sd_lldp_neighbor * const *a, sd_lldp_neighbor * const *b) {
        return lldp_neighbor_id_compare_func(&(*a)->id, &(*b)->id);
}
