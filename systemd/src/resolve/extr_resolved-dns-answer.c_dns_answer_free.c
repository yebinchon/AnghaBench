
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsAnswer ;


 int assert (int *) ;
 int dns_answer_flush (int *) ;
 int * mfree (int *) ;

__attribute__((used)) static DnsAnswer *dns_answer_free(DnsAnswer *a) {
        assert(a);

        dns_answer_flush(a);
        return mfree(a);
}
