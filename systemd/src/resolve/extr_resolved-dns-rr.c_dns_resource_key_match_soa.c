
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ class; scalar_t__ type; } ;
typedef TYPE_1__ DnsResourceKey ;


 scalar_t__ DNS_TYPE_SOA ;
 int assert (TYPE_1__ const*) ;
 int dns_name_endswith (int ,int ) ;
 int dns_resource_key_name (TYPE_1__ const*) ;

int dns_resource_key_match_soa(const DnsResourceKey *key, const DnsResourceKey *soa) {
        assert(soa);
        assert(key);



        if (soa->class != key->class)
                return 0;

        if (soa->type != DNS_TYPE_SOA)
                return 0;

        return dns_name_endswith(dns_resource_key_name(key), dns_resource_key_name(soa));
}
