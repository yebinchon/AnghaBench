
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct siphash {int dummy; } ;
struct TYPE_5__ {int type; int class; } ;
typedef TYPE_1__ DnsResourceKey ;


 int assert (TYPE_1__ const*) ;
 int dns_name_hash_func (int ,struct siphash*) ;
 int dns_resource_key_name (TYPE_1__ const*) ;
 int siphash24_compress (int *,int,struct siphash*) ;

__attribute__((used)) static void dns_resource_key_hash_func(const DnsResourceKey *k, struct siphash *state) {
        assert(k);

        dns_name_hash_func(dns_resource_key_name(k), state);
        siphash24_compress(&k->class, sizeof(k->class), state);
        siphash24_compress(&k->type, sizeof(k->type), state);
}
