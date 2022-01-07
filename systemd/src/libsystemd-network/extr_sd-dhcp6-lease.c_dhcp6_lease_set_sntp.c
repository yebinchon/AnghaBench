
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ntp_count; int ntp_allocated; scalar_t__ ntp; scalar_t__ ntp_fqdn; } ;
typedef TYPE_1__ uint8_t ;
typedef TYPE_1__ sd_dhcp6_lease ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int client ;
 int dhcp6_option_parse_ip6addrs (TYPE_1__*,size_t,scalar_t__*,int,int *) ;
 int log_dhcp6_client (int ,char*) ;
 int log_dhcp6_client_errno (int ,int,char*) ;

int dhcp6_lease_set_sntp(sd_dhcp6_lease *lease, uint8_t *optval, size_t optlen) {
        int r;

        assert_return(lease, -EINVAL);
        assert_return(optval, -EINVAL);

        if (!optlen)
                return 0;

        if (lease->ntp || lease->ntp_fqdn) {
                log_dhcp6_client(client, "NTP information already provided");

                return 0;
        }

        log_dhcp6_client(client, "Using deprecated SNTP information");

        r = dhcp6_option_parse_ip6addrs(optval, optlen, &lease->ntp,
                                        lease->ntp_count,
                                        &lease->ntp_allocated);
        if (r < 0)
                return log_dhcp6_client_errno(client, r, "Invalid SNTP server option: %m");

        lease->ntp_count = r;

        return 0;
}
