
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int ERANGE ;
 int FAMILY_ADDRESS_SIZE (int) ;
 int IN_SET (int,int ,int ) ;
 int safe_atou8 (char const*,int*) ;

int in_addr_parse_prefixlen(int family, const char *p, unsigned char *ret) {
        uint8_t u;
        int r;

        if (!IN_SET(family, AF_INET, AF_INET6))
                return -EAFNOSUPPORT;

        r = safe_atou8(p, &u);
        if (r < 0)
                return r;

        if (u > FAMILY_ADDRESS_SIZE(family) * 8)
                return -ERANGE;

        *ret = u;
        return 0;
}
