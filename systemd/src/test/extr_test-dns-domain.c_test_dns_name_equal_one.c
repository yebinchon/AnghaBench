
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int dns_name_equal (char const*,char const*) ;

__attribute__((used)) static void test_dns_name_equal_one(const char *a, const char *b, int ret) {
        int r;

        r = dns_name_equal(a, b);
        assert_se(r == ret);

        r = dns_name_equal(b, a);
        assert_se(r == ret);
}
