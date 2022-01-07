
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ candidates; } ;
typedef TYPE_1__ DnsQuery ;


 int assert (TYPE_1__*) ;
 int dns_query_candidate_free (scalar_t__) ;

__attribute__((used)) static void dns_query_free_candidates(DnsQuery *q) {
        assert(q);

        while (q->candidates)
                dns_query_candidate_free(q->candidates);
}
