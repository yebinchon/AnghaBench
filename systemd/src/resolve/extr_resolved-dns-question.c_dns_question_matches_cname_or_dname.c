
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_9__ {size_t n_keys; TYPE_3__** keys; } ;
struct TYPE_8__ {TYPE_4__* key; } ;
typedef TYPE_1__ DnsResourceRecord ;
typedef TYPE_2__ DnsQuestion ;


 int DNS_TYPE_CNAME ;
 int DNS_TYPE_DNAME ;
 int IN_SET (int ,int ,int ) ;
 int assert (TYPE_1__*) ;
 int dns_resource_key_match_cname_or_dname (TYPE_3__*,TYPE_4__*,char const*) ;
 int dns_type_may_redirect (int ) ;

int dns_question_matches_cname_or_dname(DnsQuestion *q, DnsResourceRecord *rr, const char *search_domain) {
        size_t i;
        int r;

        assert(rr);

        if (!q)
                return 0;

        if (!IN_SET(rr->key->type, DNS_TYPE_CNAME, DNS_TYPE_DNAME))
                return 0;

        for (i = 0; i < q->n_keys; i++) {

                if (!dns_type_may_redirect(q->keys[i]->type))
                        return 0;

                r = dns_resource_key_match_cname_or_dname(q->keys[i], rr->key, search_domain);
                if (r != 0)
                        return r;
        }

        return 0;
}
