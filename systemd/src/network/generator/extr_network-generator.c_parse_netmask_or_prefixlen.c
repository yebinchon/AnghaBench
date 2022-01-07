
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union in_addr_union {int in; } ;


 int AF_INET6 ;
 int EINVAL ;
 unsigned char in4_addr_netmask_to_prefixlen (int *) ;
 int parse_ip_address_one (int,char const**,union in_addr_union*) ;
 int safe_atou8 (char const*,unsigned char*) ;
 char* strchr (char const*,char) ;
 char* strndupa (char const*,int) ;

__attribute__((used)) static int parse_netmask_or_prefixlen(int family, const char **value, unsigned char *ret) {
        union in_addr_union netmask;
        const char *p, *q;
        int r;

        r = parse_ip_address_one(family, value, &netmask);
        if (r > 0) {
                if (family == AF_INET6)

                        return -EINVAL;

                *ret = in4_addr_netmask_to_prefixlen(&netmask.in);
        } else if (r == 0)
                *ret = family == AF_INET6 ? 128 : 32;
        else {
                p = strchr(*value, ':');
                if (!p)
                        return -EINVAL;

                q = strndupa(*value, p - *value);
                r = safe_atou8(q, ret);
                if (r < 0)
                        return r;

                *value = p + 1;
        }

        return 0;
}
