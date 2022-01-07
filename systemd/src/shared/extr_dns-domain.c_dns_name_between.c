
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dns_name_compare_func (char const*,char const*) ;

int dns_name_between(const char *a, const char *b, const char *c) {






        if (dns_name_compare_func(a, c) < 0)




                return dns_name_compare_func(a, b) < 0 &&
                       dns_name_compare_func(b, c) < 0;
        else






                return dns_name_compare_func(b, c) < 0 ||
                       dns_name_compare_func(a, b) < 0;
}
