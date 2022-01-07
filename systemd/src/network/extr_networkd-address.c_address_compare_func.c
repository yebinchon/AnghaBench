
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int family; int prefixlen; int in_addr; } ;
typedef TYPE_1__ Address ;




 int CMP (int,int) ;
 int FAMILY_ADDRESS_SIZE (int) ;
 int _fallthrough_ ;
 int address_prefix (TYPE_1__ const*) ;
 int memcmp (int *,int *,int ) ;

__attribute__((used)) static int address_compare_func(const Address *a1, const Address *a2) {
        int r;

        r = CMP(a1->family, a2->family);
        if (r != 0)
                return r;

        switch (a1->family) {

        case 129:
                r = CMP(a1->prefixlen, a2->prefixlen);
                if (r != 0)
                        return r;

                uint32_t prefix1 = address_prefix(a1);
                uint32_t prefix2 = address_prefix(a2);
                r = CMP(prefix1, prefix2);
                if (r != 0)
                        return r;

                _fallthrough_;
        case 128:
                return memcmp(&a1->in_addr, &a2->in_addr, FAMILY_ADDRESS_SIZE(a1->family));
        default:

                return 0;
        }
}
