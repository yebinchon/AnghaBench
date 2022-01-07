
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ dns_name_common_suffix (char const*,char const*,char const**) ;
 int log_info (char*,char const*,char const*,char const*) ;
 int streq (char const*,char const*) ;

__attribute__((used)) static void test_dns_name_common_suffix_one(const char *a, const char *b, const char *result) {
        const char *c;

        log_info("%s, %s, →%s", a, b, result);

        assert_se(dns_name_common_suffix(a, b, &c) >= 0);
        assert_se(streq(c, result));
}
