
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int dns_name_endswith (char const*,char const*) ;

__attribute__((used)) static void test_dns_name_endswith_one(const char *a, const char *b, int ret) {
        assert_se(dns_name_endswith(a, b) == ret);
}
