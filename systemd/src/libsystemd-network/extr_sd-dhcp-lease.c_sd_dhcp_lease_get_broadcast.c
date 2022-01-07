
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int broadcast; int s_addr; int have_broadcast; } ;
typedef struct in_addr sd_dhcp_lease ;


 int EINVAL ;
 int ENODATA ;
 int assert_return (struct in_addr*,int ) ;

int sd_dhcp_lease_get_broadcast(sd_dhcp_lease *lease, struct in_addr *addr) {
        assert_return(lease, -EINVAL);
        assert_return(addr, -EINVAL);

        if (!lease->have_broadcast)
                return -ENODATA;

        addr->s_addr = lease->broadcast;
        return 0;
}
