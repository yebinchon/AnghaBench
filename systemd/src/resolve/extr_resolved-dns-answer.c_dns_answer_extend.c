
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsAnswer ;


 int assert (int **) ;
 int dns_answer_merge (int *,int *,int **) ;
 int dns_answer_unref (int *) ;

int dns_answer_extend(DnsAnswer **a, DnsAnswer *b) {
        DnsAnswer *merged;
        int r;

        assert(a);

        r = dns_answer_merge(*a, b, &merged);
        if (r < 0)
                return r;

        dns_answer_unref(*a);
        *a = merged;

        return 0;
}
