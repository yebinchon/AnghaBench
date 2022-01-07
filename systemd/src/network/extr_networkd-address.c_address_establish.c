
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_8__ {scalar_t__ family; scalar_t__ scope; int ip_masquerade_done; int prefixlen; union in_addr_union in_addr; TYPE_1__* network; } ;
struct TYPE_7__ {scalar_t__ ip_masquerade; } ;
typedef TYPE_2__ Link ;
typedef TYPE_2__ Address ;


 scalar_t__ AF_INET ;
 scalar_t__ RT_SCOPE_LINK ;
 int assert (TYPE_2__*) ;
 int fw_add_masquerade (int,scalar_t__,int ,union in_addr_union*,int ,int *,int *,int ) ;
 int in_addr_mask (scalar_t__,union in_addr_union*,int ) ;

__attribute__((used)) static int address_establish(Address *address, Link *link) {
        bool masq;
        int r;

        assert(address);
        assert(link);

        masq = link->network &&
               link->network->ip_masquerade &&
               address->family == AF_INET &&
               address->scope < RT_SCOPE_LINK;


        if (address->ip_masquerade_done != masq) {
                union in_addr_union masked = address->in_addr;
                in_addr_mask(address->family, &masked, address->prefixlen);

                r = fw_add_masquerade(masq, AF_INET, 0, &masked, address->prefixlen, ((void*)0), ((void*)0), 0);
                if (r < 0)
                        return r;

                address->ip_masquerade_done = masq;
        }

        return 0;
}
