
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union in_addr_union {int dummy; } in_addr_union ;
struct in6_addr {int dummy; } ;
struct TYPE_10__ {struct TYPE_10__* label; scalar_t__ section; TYPE_2__* link; int in_addr; TYPE_1__* network; } ;
struct TYPE_9__ {int ipv6ll_address; int addresses_foreign; int addresses; } ;
struct TYPE_8__ {scalar_t__ n_static_addresses; int addresses_by_section; int static_addresses; } ;
typedef TYPE_3__ Address ;


 int AF_INET6 ;
 int LIST_REMOVE (int ,int ,TYPE_3__*) ;
 int addresses ;
 int assert (int) ;
 int free (TYPE_3__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 scalar_t__ in_addr_equal (int ,int *,union in_addr_union const*) ;
 int memzero (int *,int) ;
 int network_config_section_free (scalar_t__) ;
 int set_remove (int ,TYPE_3__*) ;

void address_free(Address *address) {
        if (!address)
                return;

        if (address->network) {
                LIST_REMOVE(addresses, address->network->static_addresses, address);
                assert(address->network->n_static_addresses > 0);
                address->network->n_static_addresses--;

                if (address->section)
                        hashmap_remove(address->network->addresses_by_section, address->section);
        }

        if (address->link) {
                set_remove(address->link->addresses, address);
                set_remove(address->link->addresses_foreign, address);

                if (in_addr_equal(AF_INET6, &address->in_addr, (const union in_addr_union *) &address->link->ipv6ll_address))
                        memzero(&address->link->ipv6ll_address, sizeof(struct in6_addr));
        }

        network_config_section_free(address->section);
        free(address->label);
        free(address);
}
