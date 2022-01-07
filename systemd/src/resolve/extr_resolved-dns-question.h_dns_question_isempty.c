
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DnsQuestion ;


 scalar_t__ dns_question_size (int *) ;

__attribute__((used)) static inline bool dns_question_isempty(DnsQuestion *q) {
        return dns_question_size(q) <= 0;
}
