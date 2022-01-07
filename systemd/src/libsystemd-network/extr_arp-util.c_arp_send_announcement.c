
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;
typedef int be32_t ;


 int arp_send_packet (int,int,int ,struct ether_addr const*,int) ;

int arp_send_announcement(int fd, int ifindex,
                          be32_t pa, const struct ether_addr *ha) {
        return arp_send_packet(fd, ifindex, pa, ha, 1);
}
