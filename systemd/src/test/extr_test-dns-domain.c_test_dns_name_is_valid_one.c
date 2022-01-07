
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int dns_name_is_valid (char const*) ;
 int dns_name_is_valid_ldh (char const*) ;
 int log_info (char*,char const*,int) ;

__attribute__((used)) static void test_dns_name_is_valid_one(const char *s, int ret, int ret_ldh) {
        log_info("%s, →%d", s, ret);

        assert_se(dns_name_is_valid(s) == ret);
        assert_se(dns_name_is_valid_ldh(s) == ret_ldh);
}
