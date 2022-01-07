
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {scalar_t__ s_addr; } ;
struct TYPE_11__ {TYPE_3__ in; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct TYPE_9__ {TYPE_1__ in; } ;
struct TYPE_12__ {int prefixlen; TYPE_4__ in_addr; TYPE_2__ in_addr_peer; } ;
typedef TYPE_5__ Address ;


 int assert (TYPE_5__ const*) ;
 int be32toh (scalar_t__) ;

__attribute__((used)) static uint32_t address_prefix(const Address *a) {
        assert(a);



        if (a->prefixlen == 0)
                return 0;

        if (a->in_addr_peer.in.s_addr != 0)
                return be32toh(a->in_addr_peer.in.s_addr) >> (32 - a->prefixlen);
        else
                return be32toh(a->in_addr.in.s_addr) >> (32 - a->prefixlen);
}
