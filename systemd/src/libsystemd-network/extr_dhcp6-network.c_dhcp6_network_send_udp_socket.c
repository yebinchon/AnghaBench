
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6_addr; int sin6_port; int sin6_family; } ;
union sockaddr_union {int sa; TYPE_1__ in6; } ;
struct in6_addr {int dummy; } ;


 int AF_INET6 ;
 int DHCP6_PORT_SERVER ;
 int assert (struct in6_addr*) ;
 int errno ;
 int htobe16 (int ) ;
 int memcpy (int *,struct in6_addr*,int) ;
 int sendto (int,void const*,size_t,int ,int *,int) ;

int dhcp6_network_send_udp_socket(int s, struct in6_addr *server_address,
                                  const void *packet, size_t len) {
        union sockaddr_union dest = {
                .in6.sin6_family = AF_INET6,
                .in6.sin6_port = htobe16(DHCP6_PORT_SERVER),
        };
        int r;

        assert(server_address);

        memcpy(&dest.in6.sin6_addr, server_address, sizeof(dest.in6.sin6_addr));

        r = sendto(s, packet, len, 0, &dest.sa, sizeof(dest.in6));
        if (r < 0)
                return -errno;

        return 0;
}
