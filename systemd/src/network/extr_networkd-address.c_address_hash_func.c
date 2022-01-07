
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct siphash {int dummy; } ;
typedef int prefix ;
struct TYPE_5__ {int family; int prefixlen; int in_addr; } ;
typedef TYPE_1__ Address ;




 int FAMILY_ADDRESS_SIZE (int) ;
 int _fallthrough_ ;
 int address_prefix (TYPE_1__ const*) ;
 int assert (TYPE_1__ const*) ;
 int siphash24_compress (int*,int,struct siphash*) ;

__attribute__((used)) static void address_hash_func(const Address *a, struct siphash *state) {
        assert(a);

        siphash24_compress(&a->family, sizeof(a->family), state);

        switch (a->family) {
        case 129:
                siphash24_compress(&a->prefixlen, sizeof(a->prefixlen), state);


                uint32_t prefix = address_prefix(a);
                siphash24_compress(&prefix, sizeof(prefix), state);

                _fallthrough_;
        case 128:

                siphash24_compress(&a->in_addr, FAMILY_ADDRESS_SIZE(a->family), state);

                break;
        default:

                break;
        }
}
