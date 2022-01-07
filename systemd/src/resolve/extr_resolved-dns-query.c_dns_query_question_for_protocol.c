
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * question_utf8; int * question_idna; } ;
typedef int DnsQuestion ;
typedef TYPE_1__ DnsQuery ;
typedef int DnsProtocol ;





 int assert (TYPE_1__*) ;

DnsQuestion* dns_query_question_for_protocol(DnsQuery *q, DnsProtocol protocol) {
        assert(q);

        switch (protocol) {

        case 130:
                return q->question_idna;

        case 128:
        case 129:
                return q->question_utf8;

        default:
                return ((void*)0);
        }
}
