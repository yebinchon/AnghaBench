
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr_data {int family; int address; } ;


 int CMP (int ,int ) ;
 int FAMILY_ADDRESS_SIZE (int ) ;
 int memcmp (int *,int *,int ) ;

__attribute__((used)) static int in_addr_data_compare_func(const struct in_addr_data *x, const struct in_addr_data *y) {
        int r;

        r = CMP(x->family, y->family);
        if (r != 0)
                return r;

        return memcmp(&x->address, &y->address, FAMILY_ADDRESS_SIZE(x->family));
}
