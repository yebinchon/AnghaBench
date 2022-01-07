
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; int sin6_addr; int sin6_port; scalar_t__ sin6_family; } ;
struct sockaddr_in {int sin_port; int sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_15__ {int in6_addr; scalar_t__* uint32; } ;
struct TYPE_11__ {int in6_addr; } ;
struct TYPE_10__ {int in_addr; scalar_t__ uint32; } ;
struct TYPE_12__ {scalar_t__ family; TYPE_2__ ip6; TYPE_1__ ip4; } ;
struct TYPE_14__ {TYPE_3__ ip; int port; } ;
struct TYPE_13__ {scalar_t__ family; int sock; } ;
typedef TYPE_4__ Networking_Core ;
typedef TYPE_5__ IP_Port ;
typedef TYPE_6__ IP6 ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ htonl (int) ;
 int loglogdata (char*,int const*,int ,TYPE_5__,int) ;
 int sendto (int ,char*,int ,int ,struct sockaddr*,size_t) ;

int sendpacket(Networking_Core *net, IP_Port ip_port, const uint8_t *data, uint16_t length)
{
    if (net->family == 0)
        return -1;


    if ((net->family == AF_INET) && (ip_port.ip.family != AF_INET))
        return -1;

    struct sockaddr_storage addr;
    size_t addrsize = 0;

    if (ip_port.ip.family == AF_INET) {
        if (net->family == AF_INET6) {

            struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&addr;

            addrsize = sizeof(struct sockaddr_in6);
            addr6->sin6_family = AF_INET6;
            addr6->sin6_port = ip_port.port;



            IP6 ip6;

            ip6.uint32[0] = 0;
            ip6.uint32[1] = 0;
            ip6.uint32[2] = htonl(0xFFFF);
            ip6.uint32[3] = ip_port.ip.ip4.uint32;
            addr6->sin6_addr = ip6.in6_addr;

            addr6->sin6_flowinfo = 0;
            addr6->sin6_scope_id = 0;
        } else {
            struct sockaddr_in *addr4 = (struct sockaddr_in *)&addr;

            addrsize = sizeof(struct sockaddr_in);
            addr4->sin_family = AF_INET;
            addr4->sin_addr = ip_port.ip.ip4.in_addr;
            addr4->sin_port = ip_port.port;
        }
    } else if (ip_port.ip.family == AF_INET6) {
        struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&addr;

        addrsize = sizeof(struct sockaddr_in6);
        addr6->sin6_family = AF_INET6;
        addr6->sin6_port = ip_port.port;
        addr6->sin6_addr = ip_port.ip.ip6.in6_addr;

        addr6->sin6_flowinfo = 0;
        addr6->sin6_scope_id = 0;
    } else {

        return -1;
    }

    int res = sendto(net->sock, (char *) data, length, 0, (struct sockaddr *)&addr, addrsize);

    loglogdata("O=>", data, length, ip_port, res);

    return res;
}
