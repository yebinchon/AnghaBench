
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int test_dns_name_equal_one (char*,char*,int) ;

__attribute__((used)) static void test_dns_name_equal(void) {
        test_dns_name_equal_one("", "", 1);
        test_dns_name_equal_one("x", "x", 1);
        test_dns_name_equal_one("x", "x.", 1);
        test_dns_name_equal_one("abc.def", "abc.def", 1);
        test_dns_name_equal_one("abc.def", "ABC.def", 1);
        test_dns_name_equal_one("abc.def", "CBA.def", 0);
        test_dns_name_equal_one("", "xxx", 0);
        test_dns_name_equal_one("ab", "a", 0);
        test_dns_name_equal_one("\\000", "\\000", 1);
        test_dns_name_equal_one(".", "", 1);
        test_dns_name_equal_one(".", ".", 1);
        test_dns_name_equal_one("..", "..", -EINVAL);
}
