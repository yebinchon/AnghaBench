
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int dns_name_is_single_label (char*) ;

__attribute__((used)) static void test_dns_name_is_single_label(void) {
        assert_se(!dns_name_is_single_label(""));
        assert_se(!dns_name_is_single_label("."));
        assert_se(!dns_name_is_single_label(".."));
        assert_se(dns_name_is_single_label("x"));
        assert_se(dns_name_is_single_label("x."));
        assert_se(!dns_name_is_single_label("xx.yy"));
}
