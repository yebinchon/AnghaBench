
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
union sockaddr_union {int sa; TYPE_2__ in; } ;
typedef int uint16_t ;
typedef int be32_t ;


 int AF_INET ;
 int assert (size_t) ;
 int errno ;
 int htobe16 (int ) ;
 int sendto (int,void const*,size_t,int ,int *,int) ;

int dhcp_network_send_udp_socket(int s, be32_t address, uint16_t port,
                                 const void *packet, size_t len) {
        union sockaddr_union dest = {
                .in.sin_family = AF_INET,
                .in.sin_port = htobe16(port),
                .in.sin_addr.s_addr = address,
        };
        int r;

        assert(s >= 0);
        assert(packet);
        assert(len);

        r = sendto(s, packet, len, 0, &dest.sa, sizeof(dest.in));
        if (r < 0)
                return -errno;

        return 0;
}
