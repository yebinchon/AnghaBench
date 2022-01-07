
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int domains_count; int domains; } ;
typedef TYPE_1__ uint8_t ;
typedef TYPE_1__ sd_dhcp6_lease ;


 int EINVAL ;
 int assert_return (TYPE_1__*,int ) ;
 int dhcp6_option_parse_domainname (TYPE_1__*,size_t,char***) ;
 int strv_free_and_replace (int ,char**) ;

int dhcp6_lease_set_domains(sd_dhcp6_lease *lease, uint8_t *optval,
                            size_t optlen) {
        int r;
        char **domains;

        assert_return(lease, -EINVAL);
        assert_return(optval, -EINVAL);

        if (!optlen)
                return 0;

        r = dhcp6_option_parse_domainname(optval, optlen, &domains);
        if (r < 0)
                return 0;

        strv_free_and_replace(lease->domains, domains);
        lease->domains_count = r;

        return r;
}
