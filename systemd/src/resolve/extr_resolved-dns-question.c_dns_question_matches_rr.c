
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n_keys; int * keys; } ;
typedef int DnsResourceRecord ;
typedef TYPE_1__ DnsQuestion ;


 int assert (int *) ;
 int dns_resource_key_match_rr (int ,int *,char const*) ;

int dns_question_matches_rr(DnsQuestion *q, DnsResourceRecord *rr, const char *search_domain) {
        size_t i;
        int r;

        assert(rr);

        if (!q)
                return 0;

        for (i = 0; i < q->n_keys; i++) {
                r = dns_resource_key_match_rr(q->keys[i], rr, search_domain);
                if (r != 0)
                        return r;
        }

        return 0;
}
