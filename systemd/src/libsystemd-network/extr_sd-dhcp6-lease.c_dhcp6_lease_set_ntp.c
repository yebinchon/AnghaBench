
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ntp_count; int ntp_fqdn_count; int ntp_fqdn; scalar_t__ ntp_allocated; int ntp; } ;
typedef TYPE_1__ uint8_t ;
typedef int uint16_t ;
typedef TYPE_1__ sd_dhcp6_lease ;





 int EINVAL ;
 int ENOMSG ;
 int assert_return (TYPE_1__*,int ) ;
 int dhcp6_option_parse (TYPE_1__**,size_t*,int*,size_t*,TYPE_1__**) ;
 int dhcp6_option_parse_domainname (TYPE_1__*,size_t,char***) ;
 int dhcp6_option_parse_ip6addrs (TYPE_1__*,size_t,int *,int,scalar_t__*) ;
 int mfree (int ) ;
 int strv_free_and_replace (int ,char**) ;

int dhcp6_lease_set_ntp(sd_dhcp6_lease *lease, uint8_t *optval, size_t optlen) {
        int r;
        uint16_t subopt;
        size_t sublen;
        uint8_t *subval;

        assert_return(lease, -EINVAL);
        assert_return(optval, -EINVAL);

        lease->ntp = mfree(lease->ntp);
        lease->ntp_count = 0;
        lease->ntp_allocated = 0;

        while ((r = dhcp6_option_parse(&optval, &optlen, &subopt, &sublen,
                                       &subval)) >= 0) {
                int s;
                char **servers;

                switch(subopt) {
                case 129:
                case 130:
                        if (sublen != 16)
                                return 0;

                        s = dhcp6_option_parse_ip6addrs(subval, sublen,
                                                        &lease->ntp,
                                                        lease->ntp_count,
                                                        &lease->ntp_allocated);
                        if (s < 0)
                                return s;

                        lease->ntp_count = s;

                        break;

                case 128:
                        r = dhcp6_option_parse_domainname(subval, sublen,
                                                          &servers);
                        if (r < 0)
                                return 0;

                        strv_free_and_replace(lease->ntp_fqdn, servers);
                        lease->ntp_fqdn_count = r;

                        break;
                }
        }

        if (r != -ENOMSG)
                return r;

        return 0;
}
