
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ n_keys; scalar_t__ n_allocated; int * keys; } ;
typedef TYPE_1__ DnsResourceKey ;
typedef TYPE_1__ DnsQuestion ;


 int ENOSPC ;
 int assert (TYPE_1__*) ;
 int dns_resource_key_ref (TYPE_1__*) ;

int dns_question_add_raw(DnsQuestion *q, DnsResourceKey *key) {


        assert(key);
        assert(q);

        if (q->n_keys >= q->n_allocated)
                return -ENOSPC;

        q->keys[q->n_keys++] = dns_resource_key_ref(key);
        return 0;
}
