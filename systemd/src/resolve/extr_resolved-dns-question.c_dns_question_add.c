
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t n_keys; int * keys; } ;
typedef int DnsResourceKey ;
typedef TYPE_1__ DnsQuestion ;


 int ENOSPC ;
 int assert (int *) ;
 int dns_question_add_raw (TYPE_1__*,int *) ;
 int dns_resource_key_equal (int ,int *) ;

int dns_question_add(DnsQuestion *q, DnsResourceKey *key) {
        int r;

        assert(key);

        if (!q)
                return -ENOSPC;

        for (size_t i = 0; i < q->n_keys; i++) {
                r = dns_resource_key_equal(q->keys[i], key);
                if (r < 0)
                        return r;
                if (r > 0)
                        return 0;
        }

        return dns_question_add_raw(q, key);
}
