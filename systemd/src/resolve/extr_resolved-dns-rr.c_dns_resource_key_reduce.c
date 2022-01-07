
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {unsigned int n_ref; } ;
typedef TYPE_1__ DnsResourceKey ;


 int assert (TYPE_1__**) ;
 scalar_t__ dns_resource_key_equal (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* dns_resource_key_ref (TYPE_1__*) ;
 int dns_resource_key_unref (TYPE_1__*) ;

bool dns_resource_key_reduce(DnsResourceKey **a, DnsResourceKey **b) {
        assert(a);
        assert(b);






        if (!*a)
                return 0;
        if (!*b)
                return 0;


        if ((*a)->n_ref == (unsigned) -1)
                return 0;
        if ((*b)->n_ref == (unsigned) -1)
                return 0;


        if (*a == *b)
                return 1;


        if (dns_resource_key_equal(*a, *b) <= 0)
                return 0;


        if ((*a)->n_ref > (*b)->n_ref) {
                dns_resource_key_unref(*b);
                *b = dns_resource_key_ref(*a);
        } else {
                dns_resource_key_unref(*a);
                *a = dns_resource_key_ref(*b);
        }

        return 1;
}
