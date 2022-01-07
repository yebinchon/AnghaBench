
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ class; } ;
struct TYPE_7__ {TYPE_5__* key; } ;
typedef TYPE_1__ DnsTransaction ;
typedef TYPE_1__ DnsResourceRecord ;


 scalar_t__ DNS_CLASS_IN ;
 int assert (TYPE_1__*) ;
 scalar_t__ dns_name_is_root (int ) ;
 int dns_resource_key_name (TYPE_5__*) ;

__attribute__((used)) static int dns_transaction_known_signed(DnsTransaction *t, DnsResourceRecord *rr) {
        assert(t);
        assert(rr);




        return rr->key->class == DNS_CLASS_IN &&
                dns_name_is_root(dns_resource_key_name(rr->key));
}
