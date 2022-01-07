
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t n_keys; int * keys; } ;
typedef TYPE_1__ DnsQuestion ;


 int assert (TYPE_1__*) ;
 int dns_resource_key_unref (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static DnsQuestion *dns_question_free(DnsQuestion *q) {
        size_t i;

        assert(q);

        for (i = 0; i < q->n_keys; i++)
                dns_resource_key_unref(q->keys[i]);
        return mfree(q);
}
