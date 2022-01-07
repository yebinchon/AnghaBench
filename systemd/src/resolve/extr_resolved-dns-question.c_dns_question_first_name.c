
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_keys; int * keys; } ;
typedef TYPE_1__ DnsQuestion ;


 char const* dns_resource_key_name (int ) ;

const char *dns_question_first_name(DnsQuestion *q) {

        if (!q)
                return ((void*)0);

        if (q->n_keys < 1)
                return ((void*)0);

        return dns_resource_key_name(q->keys[0]);
}
