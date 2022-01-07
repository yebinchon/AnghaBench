
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in6_addr {TYPE_2__* prefix_iter; } ;
typedef struct in6_addr uint8_t ;
typedef struct in6_addr uint32_t ;
typedef struct in6_addr sd_dhcp6_lease ;
struct TYPE_3__ {int lifetime_valid; int lifetime_preferred; struct in6_addr prefixlen; int address; } ;
struct TYPE_4__ {struct TYPE_4__* addresses_next; TYPE_1__ iapdprefix; } ;


 int EINVAL ;
 int ENOMSG ;
 int assert_return (struct in6_addr*,int ) ;
 struct in6_addr be32toh (int ) ;
 int memcpy (struct in6_addr*,int *,int) ;

int sd_dhcp6_lease_get_pd(sd_dhcp6_lease *lease, struct in6_addr *prefix,
                          uint8_t *prefix_len,
                          uint32_t *lifetime_preferred,
                          uint32_t *lifetime_valid) {
        assert_return(lease, -EINVAL);
        assert_return(prefix, -EINVAL);
        assert_return(prefix_len, -EINVAL);
        assert_return(lifetime_preferred, -EINVAL);
        assert_return(lifetime_valid, -EINVAL);

        if (!lease->prefix_iter)
                return -ENOMSG;

        memcpy(prefix, &lease->prefix_iter->iapdprefix.address,
               sizeof(struct in6_addr));
        *prefix_len = lease->prefix_iter->iapdprefix.prefixlen;
        *lifetime_preferred =
                be32toh(lease->prefix_iter->iapdprefix.lifetime_preferred);
        *lifetime_valid =
                be32toh(lease->prefix_iter->iapdprefix.lifetime_valid);

        lease->prefix_iter = lease->prefix_iter->addresses_next;

        return 0;
}
