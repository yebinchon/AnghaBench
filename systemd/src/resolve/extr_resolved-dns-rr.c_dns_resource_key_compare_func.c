
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int class; int type; } ;
typedef TYPE_1__ DnsResourceKey ;


 int CMP (int ,int ) ;
 int dns_name_compare_func (int ,int ) ;
 int dns_resource_key_name (TYPE_1__ const*) ;

__attribute__((used)) static int dns_resource_key_compare_func(const DnsResourceKey *x, const DnsResourceKey *y) {
        int ret;

        ret = dns_name_compare_func(dns_resource_key_name(x), dns_resource_key_name(y));
        if (ret != 0)
                return ret;

        ret = CMP(x->type, y->type);
        if (ret != 0)
                return ret;

        ret = CMP(x->class, y->class);
        if (ret != 0)
                return ret;

        return 0;
}
