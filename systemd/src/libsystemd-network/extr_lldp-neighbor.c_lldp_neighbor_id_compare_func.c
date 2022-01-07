
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int port_id_size; int port_id; int chassis_id_size; int chassis_id; } ;
typedef TYPE_1__ LLDPNeighborID ;


 int memcmp_nn (int ,int ,int ,int ) ;

int lldp_neighbor_id_compare_func(const LLDPNeighborID *x, const LLDPNeighborID *y) {
        return memcmp_nn(x->chassis_id, x->chassis_id_size, y->chassis_id, y->chassis_id_size)
            ?: memcmp_nn(x->port_id, x->port_id_size, y->port_id, y->port_id_size);
}
