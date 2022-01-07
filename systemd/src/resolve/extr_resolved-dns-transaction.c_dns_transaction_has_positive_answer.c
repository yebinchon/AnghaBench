
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; int answer; } ;
typedef TYPE_1__ DnsTransaction ;
typedef int DnsAnswerFlags ;


 int assert (TYPE_1__*) ;
 int dns_answer_find_cname_or_dname (int ,int ,int *,int *) ;
 int dns_answer_match_key (int ,int ,int *) ;

__attribute__((used)) static int dns_transaction_has_positive_answer(DnsTransaction *t, DnsAnswerFlags *flags) {
        int r;

        assert(t);




        r = dns_answer_match_key(t->answer, t->key, flags);
        if (r != 0)
                return r;

        r = dns_answer_find_cname_or_dname(t->answer, t->key, ((void*)0), flags);
        if (r != 0)
                return r;

        return 0;
}
