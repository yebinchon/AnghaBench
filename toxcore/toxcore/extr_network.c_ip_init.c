
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int family; } ;
typedef TYPE_1__ IP ;


 int AF_INET ;
 int AF_INET6 ;
 int memset (TYPE_1__*,int ,int) ;

void ip_init(IP *ip, uint8_t ipv6enabled)
{
    if (!ip)
        return;

    memset(ip, 0, sizeof(IP));
    ip->family = ipv6enabled ? AF_INET6 : AF_INET;
}
