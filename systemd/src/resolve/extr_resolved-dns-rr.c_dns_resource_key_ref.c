
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int n_ref; } ;
typedef TYPE_1__ DnsResourceKey ;


 int assert (int) ;

DnsResourceKey* dns_resource_key_ref(DnsResourceKey *k) {

        if (!k)
                return ((void*)0);



        assert(k->n_ref != (unsigned) -1);

        assert(k->n_ref > 0);
        k->n_ref++;

        return k;
}
