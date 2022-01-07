
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_address {scalar_t__ family; int address; int ifindex; int metric; int scope; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int CMP (int ,int ) ;
 int FAMILY_ADDRESS_SIZE (scalar_t__) ;
 int memcmp (int *,int *,int ) ;

__attribute__((used)) static int address_compare(const struct local_address *a, const struct local_address *b) {
        int r;



        if (a->family == AF_INET && b->family == AF_INET6)
                return -1;
        if (a->family == AF_INET6 && b->family == AF_INET)
                return 1;

        r = CMP(a->scope, b->scope);
        if (r != 0)
                return r;

        r = CMP(a->metric, b->metric);
        if (r != 0)
                return r;

        r = CMP(a->ifindex, b->ifindex);
        if (r != 0)
                return r;

        return memcmp(&a->address, &b->address, FAMILY_ADDRESS_SIZE(a->family));
}
