
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {scalar_t__ s_addr; } ;
struct TYPE_4__ {scalar_t__ address; scalar_t__ subnet_mask; int have_subnet_mask; } ;
typedef TYPE_1__ sd_dhcp_lease ;


 int ENODATA ;
 int assert (TYPE_1__*) ;
 int in4_addr_default_subnet_mask (struct in_addr*,struct in_addr*) ;

int dhcp_lease_set_default_subnet_mask(sd_dhcp_lease *lease) {
        struct in_addr address, mask;
        int r;

        assert(lease);

        if (lease->address == 0)
                return -ENODATA;

        address.s_addr = lease->address;


        r = in4_addr_default_subnet_mask(&address, &mask);
        if (r < 0)
                return r;

        lease->subnet_mask = mask.s_addr;
        lease->have_subnet_mask = 1;

        return 0;
}
