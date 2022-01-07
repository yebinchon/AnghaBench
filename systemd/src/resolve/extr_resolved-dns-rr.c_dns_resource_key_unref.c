
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int n_ref; struct TYPE_5__* _name; } ;
typedef TYPE_1__ DnsResourceKey ;


 int assert (int) ;
 int free (TYPE_1__*) ;

DnsResourceKey* dns_resource_key_unref(DnsResourceKey *k) {
        if (!k)
                return ((void*)0);

        assert(k->n_ref != (unsigned) -1);
        assert(k->n_ref > 0);

        if (k->n_ref == 1) {
                free(k->_name);
                free(k);
        } else
                k->n_ref--;

        return ((void*)0);
}
