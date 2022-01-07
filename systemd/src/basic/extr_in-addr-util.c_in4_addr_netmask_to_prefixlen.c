
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 int assert (struct in_addr const*) ;
 int be32toh (int ) ;
 unsigned char u32ctz (int ) ;

unsigned char in4_addr_netmask_to_prefixlen(const struct in_addr *addr) {
        assert(addr);

        return 32U - u32ctz(be32toh(addr->s_addr));
}
