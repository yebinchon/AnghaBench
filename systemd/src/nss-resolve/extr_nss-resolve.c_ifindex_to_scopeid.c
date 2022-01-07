
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct in6_addr {int dummy; } ;
typedef int in6 ;


 int AF_INET6 ;
 int FAMILY_ADDRESS_SIZE (int) ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 int assert (int) ;
 int memcpy (struct in6_addr*,void const*,int) ;

__attribute__((used)) static uint32_t ifindex_to_scopeid(int family, const void *a, int ifindex) {
        struct in6_addr in6;

        if (family != AF_INET6)
                return 0;



        assert(sizeof(in6) == FAMILY_ADDRESS_SIZE(AF_INET6));
        memcpy(&in6, a, sizeof(struct in6_addr));

        return IN6_IS_ADDR_LINKLOCAL(&in6) ? ifindex : 0;
}
