
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_3__ {int* chassis_id; int chassis_id_size; int* port_id; int port_id_size; } ;
typedef TYPE_1__ LLDPNeighborID ;


 int siphash24_compress (int*,int,struct siphash*) ;

__attribute__((used)) static void lldp_neighbor_id_hash_func(const LLDPNeighborID *id, struct siphash *state) {
        siphash24_compress(id->chassis_id, id->chassis_id_size, state);
        siphash24_compress(&id->chassis_id_size, sizeof(id->chassis_id_size), state);
        siphash24_compress(id->port_id, id->port_id_size, state);
        siphash24_compress(&id->port_id_size, sizeof(id->port_id_size), state);
}
