
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* uint64; scalar_t__* uint32; } ;
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_1__ in_addr; } ;
struct TYPE_9__ {scalar_t__ family; TYPE_2__ ip4; TYPE_6__ ip6; } ;
typedef TYPE_3__ IP ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ IPV6_IPV4_IN_V6 (TYPE_6__) ;

int ip_equal(const IP *a, const IP *b)
{
    if (!a || !b)
        return 0;


    if (a->family == b->family) {
        if (a->family == AF_INET)
            return (a->ip4.in_addr.s_addr == b->ip4.in_addr.s_addr);
        else if (a->family == AF_INET6)
            return a->ip6.uint64[0] == b->ip6.uint64[0] && a->ip6.uint64[1] == b->ip6.uint64[1];
        else
            return 0;
    }


    if ((a->family == AF_INET) && (b->family == AF_INET6)) {
        if (IPV6_IPV4_IN_V6(b->ip6))
            return (a->ip4.in_addr.s_addr == b->ip6.uint32[3]);
    } else if ((a->family == AF_INET6) && (b->family == AF_INET)) {
        if (IPV6_IPV4_IN_V6(a->ip6))
            return (a->ip6.uint32[3] == b->ip4.in_addr.s_addr);
    }

    return 0;
}
