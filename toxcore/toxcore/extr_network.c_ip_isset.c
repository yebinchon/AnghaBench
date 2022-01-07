
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ family; } ;
typedef TYPE_1__ IP ;



int ip_isset(const IP *ip)
{
    if (!ip)
        return 0;

    return (ip->family != 0);
}
