
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ifindex; int family; int address; } ;
typedef TYPE_1__ DnsServer ;


 int CMP (int ,int ) ;
 int FAMILY_ADDRESS_SIZE (int ) ;
 int memcmp (int *,int *,int ) ;

__attribute__((used)) static int dns_server_compare_func(const DnsServer *x, const DnsServer *y) {
        int r;

        r = CMP(x->family, y->family);
        if (r != 0)
                return r;

        r = memcmp(&x->address, &y->address, FAMILY_ADDRESS_SIZE(x->family));
        if (r != 0)
                return r;

        r = CMP(x->ifindex, y->ifindex);
        if (r != 0)
                return r;

        return 0;
}
