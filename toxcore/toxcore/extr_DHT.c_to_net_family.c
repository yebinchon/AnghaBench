
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ family; } ;
typedef TYPE_1__ IP ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ TOX_AF_INET ;
 scalar_t__ TOX_AF_INET6 ;

void to_net_family(IP *ip)
{
    if (ip->family == AF_INET)
        ip->family = TOX_AF_INET;
    else if (ip->family == AF_INET6)
        ip->family = TOX_AF_INET6;
}
