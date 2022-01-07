
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * DnsResourceRecord ;
typedef int DnsAnswerFlags ;
typedef int DnsAnswer ;


 int assert (int **) ;
 int dns_answer_add (int *,int **,int,int ) ;
 int dns_answer_reserve_or_clone (int **,int) ;

int dns_answer_add_extend(DnsAnswer **a, DnsResourceRecord *rr, int ifindex, DnsAnswerFlags flags) {
        int r;

        assert(a);
        assert(rr);

        r = dns_answer_reserve_or_clone(a, 1);
        if (r < 0)
                return r;

        return dns_answer_add(*a, rr, ifindex, flags);
}
