
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * DnsResourceKey ;
typedef int DnsAnswerFlags ;
typedef int DnsAnswer ;


 int assert (int * const*) ;
 int dns_answer_copy_by_key (int **,int *,int * const*,int ) ;
 int dns_answer_remove_by_key (int **,int * const*) ;

int dns_answer_move_by_key(DnsAnswer **to, DnsAnswer **from, const DnsResourceKey *key, DnsAnswerFlags or_flags) {
        int r;

        assert(to);
        assert(from);
        assert(key);

        r = dns_answer_copy_by_key(to, *from, key, or_flags);
        if (r < 0)
                return r;

        return dns_answer_remove_by_key(from, key);
}
