
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Manager ;
typedef int AddressPool ;


 int AF_INET ;
 int AF_INET6 ;
 int address_pool_new_from_string (int *,int **,int ,char*,int) ;
 int assert (int *) ;

__attribute__((used)) static int setup_default_address_pool(Manager *m) {
        AddressPool *p;
        int r;

        assert(m);



        r = address_pool_new_from_string(m, &p, AF_INET6, "fd00::", 8);
        if (r < 0)
                return r;

        r = address_pool_new_from_string(m, &p, AF_INET, "10.0.0.0", 8);
        if (r < 0)
                return r;

        r = address_pool_new_from_string(m, &p, AF_INET, "172.16.0.0", 12);
        if (r < 0)
                return r;

        r = address_pool_new_from_string(m, &p, AF_INET, "192.168.0.0", 16);
        if (r < 0)
                return r;

        return 0;
}
