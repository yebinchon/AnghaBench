
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int key; } ;
typedef TYPE_1__ DnsResourceRecord ;


 int CMP (TYPE_1__ const*,TYPE_1__ const*) ;
 int dns_resource_key_compare_func (int ,int ) ;
 scalar_t__ dns_resource_record_equal (TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static int dns_resource_record_compare_func(const DnsResourceRecord *x, const DnsResourceRecord *y) {
        int r;

        r = dns_resource_key_compare_func(x->key, y->key);
        if (r != 0)
                return r;

        if (dns_resource_record_equal(x, y))
                return 0;



        return CMP(x, y);
}
