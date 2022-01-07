
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sockaddr_union {int dummy; } sockaddr_union ;
struct sockaddr_in {int dummy; } ;
typedef int sd_netlink_message ;


 int netlink_message_append_sockaddr_union (int *,unsigned short,union sockaddr_union const*) ;

int sd_netlink_message_append_sockaddr_in(sd_netlink_message *m, unsigned short type, const struct sockaddr_in *data) {
        return netlink_message_append_sockaddr_union(m, type, (const union sockaddr_union *) data);
}
