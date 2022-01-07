
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
struct in_addr {int s_addr; } ;


 int AF_INET ;
 int IN_SET (int,int,int) ;
 int assert (struct in_addr const*) ;
 int be32toh (int ) ;
 int in_addr_is_link_local (int ,union in_addr_union const*) ;

__attribute__((used)) static bool ipv4ll_address_is_valid(const struct in_addr *address) {
        assert(address);

        if (!in_addr_is_link_local(AF_INET, (const union in_addr_union *) address))
                return 0;

        return !IN_SET(be32toh(address->s_addr) & 0x0000FF00U, 0x0000U, 0xFF00U);
}
