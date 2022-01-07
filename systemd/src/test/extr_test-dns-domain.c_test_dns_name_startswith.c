
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_dns_name_startswith_one (char*,char*,int) ;

__attribute__((used)) static void test_dns_name_startswith(void) {
        test_dns_name_startswith_one("", "", 1);
        test_dns_name_startswith_one("", "xxx", 0);
        test_dns_name_startswith_one("xxx", "", 1);
        test_dns_name_startswith_one("x", "x", 1);
        test_dns_name_startswith_one("x", "y", 0);
        test_dns_name_startswith_one("x.y", "x.y", 1);
        test_dns_name_startswith_one("x.y", "y.x", 0);
        test_dns_name_startswith_one("x.y", "x", 1);
        test_dns_name_startswith_one("x.y", "X", 1);
        test_dns_name_startswith_one("x.y", "y", 0);
        test_dns_name_startswith_one("x.y", "", 1);
        test_dns_name_startswith_one("x.y", "X", 1);
}
