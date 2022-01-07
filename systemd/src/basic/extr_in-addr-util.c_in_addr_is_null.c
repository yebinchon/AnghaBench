
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union in_addr_union {int in6; int in; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int assert (union in_addr_union const*) ;
 int in4_addr_is_null (int *) ;

int in_addr_is_null(int family, const union in_addr_union *u) {
        assert(u);

        if (family == AF_INET)
                return in4_addr_is_null(&u->in);

        if (family == AF_INET6)
                return IN6_IS_ADDR_UNSPECIFIED(&u->in6);

        return -EAFNOSUPPORT;
}
