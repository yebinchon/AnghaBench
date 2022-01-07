
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GREEDY_REALLOC (struct in6_addr*,size_t,size_t) ;
 int memcpy (struct in6_addr*,int *,int) ;

int dhcp6_option_parse_ip6addrs(uint8_t *optval, uint16_t optlen,
                                struct in6_addr **addrs, size_t count,
                                size_t *allocated) {

        if (optlen == 0 || optlen % sizeof(struct in6_addr) != 0)
                return -EINVAL;

        if (!GREEDY_REALLOC(*addrs, *allocated,
                            count * sizeof(struct in6_addr) + optlen))
                return -ENOMEM;

        memcpy(*addrs + count, optval, optlen);

        count += optlen / sizeof(struct in6_addr);

        return count;
}
