
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_4__ {int family; int lladdr_size; int in_addr; int lladdr; } ;
typedef TYPE_1__ Neighbor ;




 int FAMILY_ADDRESS_SIZE (int) ;
 int assert (TYPE_1__ const*) ;
 int siphash24_compress (int*,int,struct siphash*) ;

__attribute__((used)) static void neighbor_hash_func(const Neighbor *neighbor, struct siphash *state) {
        assert(neighbor);

        siphash24_compress(&neighbor->family, sizeof(neighbor->family), state);
        siphash24_compress(&neighbor->lladdr_size, sizeof(neighbor->lladdr_size), state);

        switch (neighbor->family) {
        case 129:
        case 128:

                siphash24_compress(&neighbor->in_addr, FAMILY_ADDRESS_SIZE(neighbor->family), state);
                break;
        default:

                break;
        }

        siphash24_compress(&neighbor->lladdr, neighbor->lladdr_size, state);
}
