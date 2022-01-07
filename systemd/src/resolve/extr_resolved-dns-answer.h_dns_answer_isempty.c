
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsAnswer ;


 scalar_t__ dns_answer_size (int *) ;

__attribute__((used)) static inline bool dns_answer_isempty(DnsAnswer *a) {
        return dns_answer_size(a) <= 0;
}
