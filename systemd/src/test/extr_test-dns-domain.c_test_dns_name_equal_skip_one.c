
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int dns_name_equal_skip (char const*,unsigned int,char const*) ;
 int log_info (char*,char const*,unsigned int,char const*,int) ;

__attribute__((used)) static void test_dns_name_equal_skip_one(const char *a, unsigned n_labels, const char *b, int ret) {
        log_info("%s, %u, %s, →%d", a, n_labels, b, ret);

        assert_se(dns_name_equal_skip(a, n_labels, b) == ret);
}
