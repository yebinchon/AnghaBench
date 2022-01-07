
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef scalar_t__ uint32_t ;


 int AF_INET6 ;
 int ERANGE ;
 size_t IPV4_MIN_MTU ;
 size_t IPV6_MIN_MTU ;
 size_t UINT32_MAX ;
 int parse_size (char const*,int,size_t*) ;

int parse_mtu(int family, const char *s, uint32_t *ret) {
        uint64_t u;
        size_t m;
        int r;

        r = parse_size(s, 1024, &u);
        if (r < 0)
                return r;

        if (u > UINT32_MAX)
                return -ERANGE;

        if (family == AF_INET6)
                m = IPV6_MIN_MTU;
        else
                m = IPV4_MIN_MTU;

        if (u < m)
                return -ERANGE;

        *ret = (uint32_t) u;
        return 0;
}
