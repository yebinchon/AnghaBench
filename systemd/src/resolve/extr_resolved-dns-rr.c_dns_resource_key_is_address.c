
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ class; int type; } ;
typedef TYPE_1__ DnsResourceKey ;


 scalar_t__ DNS_CLASS_IN ;
 int DNS_TYPE_A ;
 int DNS_TYPE_AAAA ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int assert (TYPE_1__ const*) ;

bool dns_resource_key_is_address(const DnsResourceKey *key) {
        assert(key);



        return key->class == DNS_CLASS_IN && IN_SET(key->type, DNS_TYPE_A, DNS_TYPE_AAAA);
}
