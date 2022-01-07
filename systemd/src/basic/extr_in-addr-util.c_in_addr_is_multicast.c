
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
union in_addr_union {int in6; TYPE_1__ in; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int IN6_IS_ADDR_MULTICAST (int *) ;
 int IN_MULTICAST (int ) ;
 int assert (union in_addr_union const*) ;
 int be32toh (int ) ;

int in_addr_is_multicast(int family, const union in_addr_union *u) {
        assert(u);

        if (family == AF_INET)
                return IN_MULTICAST(be32toh(u->in.s_addr));

        if (family == AF_INET6)
                return IN6_IS_ADDR_MULTICAST(&u->in6);

        return -EAFNOSUPPORT;
}
