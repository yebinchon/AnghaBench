
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ class; scalar_t__ type; } ;
typedef TYPE_1__ DnsResourceKey ;


 int dns_name_equal (int ,int ) ;
 int dns_resource_key_name (TYPE_1__ const*) ;

int dns_resource_key_equal(const DnsResourceKey *a, const DnsResourceKey *b) {
        int r;

        if (a == b)
                return 1;

        r = dns_name_equal(dns_resource_key_name(a), dns_resource_key_name(b));
        if (r <= 0)
                return r;

        if (a->class != b->class)
                return 0;

        if (a->type != b->type)
                return 0;

        return 1;
}
