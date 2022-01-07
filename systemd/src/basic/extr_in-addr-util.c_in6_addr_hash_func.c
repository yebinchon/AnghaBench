
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;
struct in6_addr {int dummy; } ;


 int assert (struct in6_addr const*) ;
 int siphash24_compress (struct in6_addr const*,int,struct siphash*) ;

__attribute__((used)) static void in6_addr_hash_func(const struct in6_addr *addr, struct siphash *state) {
        assert(addr);

        siphash24_compress(addr, sizeof(*addr), state);
}
