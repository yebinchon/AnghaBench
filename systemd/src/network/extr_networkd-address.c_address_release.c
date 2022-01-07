
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_4__ {int ip_masquerade_done; int prefixlen; int family; union in_addr_union in_addr; struct TYPE_4__* link; } ;
typedef TYPE_1__ Address ;


 int AF_INET ;
 int assert (TYPE_1__*) ;
 int fw_add_masquerade (int,int ,int ,union in_addr_union*,int ,int *,int *,int ) ;
 int in_addr_mask (int ,union in_addr_union*,int ) ;

__attribute__((used)) static int address_release(Address *address) {
        int r;

        assert(address);
        assert(address->link);


        if (address->ip_masquerade_done) {
                union in_addr_union masked = address->in_addr;
                in_addr_mask(address->family, &masked, address->prefixlen);

                r = fw_add_masquerade(0, AF_INET, 0, &masked, address->prefixlen, ((void*)0), ((void*)0), 0);
                if (r < 0)
                        return r;

                address->ip_masquerade_done = 0;
        }

        return 0;
}
