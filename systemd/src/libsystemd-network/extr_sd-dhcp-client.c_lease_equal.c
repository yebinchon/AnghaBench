
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ address; scalar_t__ subnet_mask; scalar_t__ router_size; TYPE_1__* router; } ;
typedef TYPE_2__ sd_dhcp_lease ;
struct TYPE_5__ {scalar_t__ s_addr; } ;



__attribute__((used)) static bool lease_equal(const sd_dhcp_lease *a, const sd_dhcp_lease *b) {
        if (a->address != b->address)
                return 0;

        if (a->subnet_mask != b->subnet_mask)
                return 0;

        if (a->router_size != b->router_size)
                return 0;

        for (size_t i = 0; i < a->router_size; i++)
                if (a->router[i].s_addr != b->router[i].s_addr)
                        return 0;

        return 1;
}
