
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int memcmp (struct in6_addr const*,struct in6_addr const*,int) ;

__attribute__((used)) static int in6_addr_compare_func(const struct in6_addr *a, const struct in6_addr *b) {
        return memcmp(a, b, sizeof(*a));
}
