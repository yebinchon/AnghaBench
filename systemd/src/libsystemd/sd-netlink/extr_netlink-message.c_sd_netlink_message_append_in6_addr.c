
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
struct in6_addr {int dummy; } ;
typedef int sd_netlink_message ;


 int AF_INET6 ;
 int netlink_message_append_in_addr_union (int *,unsigned short,int ,union in_addr_union const*) ;

int sd_netlink_message_append_in6_addr(sd_netlink_message *m, unsigned short type, const struct in6_addr *data) {
        return netlink_message_append_in_addr_union(m, type, AF_INET6, (const union in_addr_union *) data);
}
