
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct siphash {int dummy; } ;
struct TYPE_2__ {int bytes; } ;
typedef int DnsResourceRecord ;


 TYPE_1__ HASH_KEY ;
 int dns_resource_record_hash_func (int *,struct siphash*) ;
 int siphash24_finalize (struct siphash*) ;
 int siphash24_init (struct siphash*,int ) ;

__attribute__((used)) static uint64_t hash(DnsResourceRecord *rr) {
        struct siphash state;

        siphash24_init(&state, HASH_KEY.bytes);
        dns_resource_record_hash_func(rr, &state);
        return siphash24_finalize(&state);
}
