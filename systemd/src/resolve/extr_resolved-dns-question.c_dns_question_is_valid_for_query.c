
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int n_keys; TYPE_2__** keys; } ;
typedef TYPE_1__ DnsQuestion ;


 int assert (TYPE_2__*) ;
 int dns_name_equal (char*,char const*) ;
 char* dns_resource_key_name (TYPE_2__*) ;
 int dns_type_is_valid_query (int ) ;

int dns_question_is_valid_for_query(DnsQuestion *q) {
        const char *name;
        size_t i;
        int r;

        if (!q)
                return 0;

        if (q->n_keys <= 0)
                return 0;

        if (q->n_keys > 65535)
                return 0;

        name = dns_resource_key_name(q->keys[0]);
        if (!name)
                return 0;


        for (i = 0; i < q->n_keys; i++) {
                assert(q->keys[i]);

                if (i > 0) {
                        r = dns_name_equal(dns_resource_key_name(q->keys[i]), name);
                        if (r <= 0)
                                return r;
                }

                if (!dns_type_is_valid_query(q->keys[i]->type))
                        return 0;
        }

        return 1;
}
