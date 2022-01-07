
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dns_name_compare_func (char* const,char* const) ;

__attribute__((used)) static int domain_name_cmp(char * const *a, char * const *b) {
        return dns_name_compare_func(*a, *b);
}
