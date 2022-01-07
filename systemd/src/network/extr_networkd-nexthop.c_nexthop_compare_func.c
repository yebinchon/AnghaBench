
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int oif; int family; int gw; } ;
typedef TYPE_1__ NextHop ;




 int CMP (int,int) ;
 int FAMILY_ADDRESS_SIZE (int) ;
 int memcmp (int *,int *,int ) ;

__attribute__((used)) static int nexthop_compare_func(const NextHop *a, const NextHop *b) {
        int r;

        r = CMP(a->id, b->id);
        if (r != 0)
                return r;

        r = CMP(a->oif, b->oif);
        if (r != 0)
                return r;

        r = CMP(a->family, b->family);
        if (r != 0)
                return r;

        switch (a->family) {
        case 129:
        case 128:

                r = memcmp(&a->gw, &b->gw, FAMILY_ADDRESS_SIZE(a->family));
                if (r != 0)
                        return r;

                return 0;
        default:

                return 0;
        }
}
