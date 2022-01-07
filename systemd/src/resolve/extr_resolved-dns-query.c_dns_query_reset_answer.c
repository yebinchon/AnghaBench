
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int answer_authenticated; int answer_search_domain; int answer_family; int answer_protocol; scalar_t__ answer_errno; int answer_dnssec_result; scalar_t__ answer_rcode; int answer; } ;
typedef TYPE_1__ DnsQuery ;


 int AF_UNSPEC ;
 int _DNSSEC_RESULT_INVALID ;
 int _DNS_PROTOCOL_INVALID ;
 int assert (TYPE_1__*) ;
 int dns_answer_unref (int ) ;
 int dns_search_domain_unref (int ) ;

__attribute__((used)) static void dns_query_reset_answer(DnsQuery *q) {
        assert(q);

        q->answer = dns_answer_unref(q->answer);
        q->answer_rcode = 0;
        q->answer_dnssec_result = _DNSSEC_RESULT_INVALID;
        q->answer_errno = 0;
        q->answer_authenticated = 0;
        q->answer_protocol = _DNS_PROTOCOL_INVALID;
        q->answer_family = AF_UNSPEC;
        q->answer_search_domain = dns_search_domain_unref(q->answer_search_domain);
}
