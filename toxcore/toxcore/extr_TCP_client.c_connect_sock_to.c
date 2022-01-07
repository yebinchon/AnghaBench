
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr_storage {int member_0; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; scalar_t__ sin6_family; } ;
struct sockaddr_in {int sin_port; int sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sock_t ;
struct TYPE_9__ {int in6_addr; } ;
struct TYPE_8__ {int in_addr; } ;
struct TYPE_10__ {scalar_t__ family; TYPE_2__ ip6; TYPE_1__ ip4; } ;
struct TYPE_12__ {int port; TYPE_3__ ip; } ;
struct TYPE_11__ {scalar_t__ proxy_type; TYPE_5__ ip_port; } ;
typedef TYPE_4__ TCP_Proxy_Info ;
typedef TYPE_5__ IP_Port ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ TCP_PROXY_NONE ;
 int connect (int ,struct sockaddr*,size_t) ;

__attribute__((used)) static int connect_sock_to(sock_t sock, IP_Port ip_port, TCP_Proxy_Info *proxy_info)
{
    if (proxy_info->proxy_type != TCP_PROXY_NONE) {
        ip_port = proxy_info->ip_port;
    }

    struct sockaddr_storage addr = {0};

    size_t addrsize;

    if (ip_port.ip.family == AF_INET) {
        struct sockaddr_in *addr4 = (struct sockaddr_in *)&addr;

        addrsize = sizeof(struct sockaddr_in);
        addr4->sin_family = AF_INET;
        addr4->sin_addr = ip_port.ip.ip4.in_addr;
        addr4->sin_port = ip_port.port;
    } else if (ip_port.ip.family == AF_INET6) {
        struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&addr;

        addrsize = sizeof(struct sockaddr_in6);
        addr6->sin6_family = AF_INET6;
        addr6->sin6_addr = ip_port.ip.ip6.in6_addr;
        addr6->sin6_port = ip_port.port;
    } else {
        return 0;
    }


    connect(sock, (struct sockaddr *)&addr, addrsize);
    return 1;
}
