
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ claimed_address; scalar_t__ s_addr; } ;
typedef struct in_addr sd_ipv4ll ;


 int EINVAL ;
 int ENOENT ;
 int assert_return (struct in_addr*,int ) ;

int sd_ipv4ll_get_address(sd_ipv4ll *ll, struct in_addr *address) {
        assert_return(ll, -EINVAL);
        assert_return(address, -EINVAL);

        if (ll->claimed_address == 0)
                return -ENOENT;

        address->s_addr = ll->claimed_address;

        return 0;
}
