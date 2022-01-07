
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int key; } ;
typedef TYPE_1__ DnsResourceRecord ;


 int assert (TYPE_1__ const*) ;
 int dns_resource_key_equal (int ,int ) ;
 int dns_resource_record_payload_equal (TYPE_1__ const*,TYPE_1__ const*) ;

int dns_resource_record_equal(const DnsResourceRecord *a, const DnsResourceRecord *b) {
        int r;

        assert(a);
        assert(b);

        if (a == b)
                return 1;

        r = dns_resource_key_equal(a->key, b->key);
        if (r <= 0)
                return r;

        return dns_resource_record_payload_equal(a, b);
}
