
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int answer_authenticated; scalar_t__ answer_errno; scalar_t__ answer_nsec_ttl; int answer_source; int answer_dnssec_result; scalar_t__ answer_rcode; int answer; int received; } ;
typedef TYPE_1__ DnsTransaction ;


 int _DNSSEC_RESULT_INVALID ;
 int _DNS_TRANSACTION_SOURCE_INVALID ;
 int assert (TYPE_1__*) ;
 int dns_answer_unref (int ) ;
 int dns_packet_unref (int ) ;

__attribute__((used)) static void dns_transaction_reset_answer(DnsTransaction *t) {
        assert(t);

        t->received = dns_packet_unref(t->received);
        t->answer = dns_answer_unref(t->answer);
        t->answer_rcode = 0;
        t->answer_dnssec_result = _DNSSEC_RESULT_INVALID;
        t->answer_source = _DNS_TRANSACTION_SOURCE_INVALID;
        t->answer_authenticated = 0;
        t->answer_nsec_ttl = (uint32_t) -1;
        t->answer_errno = 0;
}
