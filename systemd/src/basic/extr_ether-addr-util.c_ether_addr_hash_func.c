
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siphash {int dummy; } ;
struct ether_addr {int dummy; } ;


 int siphash24_compress (struct ether_addr const*,int,struct siphash*) ;

__attribute__((used)) static void ether_addr_hash_func(const struct ether_addr *p, struct siphash *state) {
        siphash24_compress(p, sizeof(struct ether_addr), state);
}
