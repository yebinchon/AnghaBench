
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

int to_host_family(IP *ip)
{
    if (ip->family == TOX_AF_INET) {
        ip->family = AF_INET;
        return 0;
    } else if (ip->family == TOX_AF_INET6) {
        ip->family = AF_INET6;
        return 0;
    } else {
        return -1;
    }
}
