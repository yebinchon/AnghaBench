
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ server_address; scalar_t__ s_addr; } ;
typedef struct in_addr sd_dhcp_lease ;


 int EINVAL ;
 int ENODATA ;
 int assert_return (struct in_addr*,int ) ;

int sd_dhcp_lease_get_server_identifier(sd_dhcp_lease *lease, struct in_addr *addr) {
        assert_return(lease, -EINVAL);
        assert_return(addr, -EINVAL);

        if (lease->server_address == 0)
                return -ENODATA;

        addr->s_addr = lease->server_address;
        return 0;
}
