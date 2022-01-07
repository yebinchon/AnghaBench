
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in_addr {int dummy; } ;
typedef struct in_addr in6_addr ;
struct TYPE_3__ {scalar_t__ family; int ip6; int ip4; } ;
typedef TYPE_1__ IP ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int * inet_ntop (scalar_t__,struct in_addr*,char*,size_t) ;

int ip_parse_addr(const IP *ip, char *address, size_t length)
{
    if (!address || !ip) {
        return 0;
    }

    if (ip->family == AF_INET) {
        struct in_addr *addr = (struct in_addr *)&ip->ip4;
        return inet_ntop(ip->family, addr, address, length) != ((void*)0);
    } else if (ip->family == AF_INET6) {
        struct in6_addr *addr = (struct in6_addr *)&ip->ip6;
        return inet_ntop(ip->family, addr, address, length) != ((void*)0);
    }

    return 0;
}
