
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ class; scalar_t__ protocol; int family; int type; } ;
typedef TYPE_1__ const DnsScope ;
typedef TYPE_1__ DnsResourceKey ;


 scalar_t__ DNS_CLASS_IN ;
 scalar_t__ DNS_PROTOCOL_DNS ;
 int assert (TYPE_1__ const*) ;
 scalar_t__ dns_name_is_root (int ) ;
 scalar_t__ dns_name_is_single_label (int ) ;
 int dns_resource_key_is_address (TYPE_1__ const*) ;
 int dns_resource_key_name (TYPE_1__ const*) ;
 int dns_type_to_af (int ) ;

bool dns_scope_good_key(DnsScope *s, const DnsResourceKey *key) {
        int key_family;

        assert(s);
        assert(key);





        if (key->class != DNS_CLASS_IN)
                return 0;

        if (s->protocol == DNS_PROTOCOL_DNS) {





                if (!dns_resource_key_is_address(key))
                        return 1;






                return !(dns_name_is_single_label(dns_resource_key_name(key)) ||
                         dns_name_is_root(dns_resource_key_name(key)));
        }




        key_family = dns_type_to_af(key->type);
        if (key_family < 0)
                return 1;

        return key_family == s->family;
}
