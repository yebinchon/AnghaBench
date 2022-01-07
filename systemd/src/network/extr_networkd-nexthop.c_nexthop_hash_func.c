
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_4__ {int id; int oif; int family; int gw; } ;
typedef TYPE_1__ NextHop ;




 int FAMILY_ADDRESS_SIZE (int) ;
 int assert (TYPE_1__ const*) ;
 int siphash24_compress (int*,int,struct siphash*) ;

__attribute__((used)) static void nexthop_hash_func(const NextHop *nexthop, struct siphash *state) {
        assert(nexthop);

        siphash24_compress(&nexthop->id, sizeof(nexthop->id), state);
        siphash24_compress(&nexthop->oif, sizeof(nexthop->oif), state);
        siphash24_compress(&nexthop->family, sizeof(nexthop->family), state);

        switch (nexthop->family) {
        case 129:
        case 128:
                siphash24_compress(&nexthop->gw, FAMILY_ADDRESS_SIZE(nexthop->family), state);

                break;
        default:

                break;
        }
}
