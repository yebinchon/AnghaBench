
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in6_addr {int dummy; } ;
typedef int sd_dhcp6_lease ;
typedef int sd_dhcp6_client ;
typedef int Link ;


 int dhcp6_address_change (int *,struct in6_addr*,int ,int ) ;
 int sd_dhcp6_client_get_lease (int *,int **) ;
 scalar_t__ sd_dhcp6_lease_get_address (int *,struct in6_addr*,int *,int *) ;
 int sd_dhcp6_lease_reset_address_iter (int *) ;

__attribute__((used)) static int dhcp6_lease_address_acquired(sd_dhcp6_client *client, Link *link) {
        int r;
        sd_dhcp6_lease *lease;
        struct in6_addr ip6_addr;
        uint32_t lifetime_preferred, lifetime_valid;

        r = sd_dhcp6_client_get_lease(client, &lease);
        if (r < 0)
                return r;

        sd_dhcp6_lease_reset_address_iter(lease);

        while (sd_dhcp6_lease_get_address(lease, &ip6_addr,
                                                 &lifetime_preferred,
                                                 &lifetime_valid) >= 0) {

                r = dhcp6_address_change(link, &ip6_addr, lifetime_preferred, lifetime_valid);
                if (r < 0)
                        return r;
        }

        return 0;
}
