
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_4__ {int ifindex; int family; int address; } ;
typedef TYPE_1__ DnsServer ;


 int FAMILY_ADDRESS_SIZE (int ) ;
 int assert (TYPE_1__ const*) ;
 int siphash24_compress (int *,int,struct siphash*) ;

__attribute__((used)) static void dns_server_hash_func(const DnsServer *s, struct siphash *state) {
        assert(s);

        siphash24_compress(&s->family, sizeof(s->family), state);
        siphash24_compress(&s->address, FAMILY_ADDRESS_SIZE(s->family), state);
        siphash24_compress(&s->ifindex, sizeof(s->ifindex), state);
}
