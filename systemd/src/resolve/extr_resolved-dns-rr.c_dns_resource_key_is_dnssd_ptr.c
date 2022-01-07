
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ DnsResourceKey ;


 scalar_t__ DNS_TYPE_PTR ;
 int assert (TYPE_1__ const*) ;
 scalar_t__ dns_name_endswith (int ,char*) ;
 int dns_resource_key_name (TYPE_1__ const*) ;

bool dns_resource_key_is_dnssd_ptr(const DnsResourceKey *key) {
        assert(key);




        if (key->type != DNS_TYPE_PTR)
                return 0;

        return dns_name_endswith(dns_resource_key_name(key), "_tcp.local") ||
                dns_name_endswith(dns_resource_key_name(key), "_udp.local");
}
