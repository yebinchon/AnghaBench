
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int previous_redirect_unauthenticated; scalar_t__ answer_authenticated; } ;
typedef TYPE_1__ DnsQuery ;


 int assert (TYPE_1__*) ;

bool dns_query_fully_authenticated(DnsQuery *q) {
        assert(q);

        return q->answer_authenticated && !q->previous_redirect_unauthenticated;
}
