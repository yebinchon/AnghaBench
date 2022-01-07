
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n_rrs; } ;
typedef TYPE_1__ DnsAnswer ;



__attribute__((used)) static inline size_t dns_answer_size(DnsAnswer *a) {
        return a ? a->n_rrs : 0;
}
