
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n_keys; } ;
typedef TYPE_1__ DnsQuestion ;



__attribute__((used)) static inline size_t dns_question_size(DnsQuestion *q) {
        return q ? q->n_keys : 0;
}
