
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n_keys; int * keys; } ;
typedef int DnsResourceKey ;
typedef TYPE_1__ DnsQuestion ;


 int assert (int const*) ;
 int dns_resource_key_equal (int ,int const*) ;

int dns_question_contains(DnsQuestion *a, const DnsResourceKey *k) {
        size_t j;
        int r;

        assert(k);

        if (!a)
                return 0;

        for (j = 0; j < a->n_keys; j++) {
                r = dns_resource_key_equal(a->keys[j], k);
                if (r != 0)
                        return r;
        }

        return 0;
}
