
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_ipv6_proxy_ndp_addresses; int ipv6_proxy_ndp_addresses; } ;
typedef TYPE_2__ IPv6ProxyNDPAddress ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (int) ;
 int free (TYPE_2__*) ;
 int ipv6_proxy_ndp_addresses ;

void ipv6_proxy_ndp_address_free(IPv6ProxyNDPAddress *ipv6_proxy_ndp_address) {
        if (!ipv6_proxy_ndp_address)
                return;

        if (ipv6_proxy_ndp_address->network) {
                LIST_REMOVE(ipv6_proxy_ndp_addresses, ipv6_proxy_ndp_address->network->ipv6_proxy_ndp_addresses,
                            ipv6_proxy_ndp_address);

                assert(ipv6_proxy_ndp_address->network->n_ipv6_proxy_ndp_addresses > 0);
                ipv6_proxy_ndp_address->network->n_ipv6_proxy_ndp_addresses--;
        }

        free(ipv6_proxy_ndp_address);
}
