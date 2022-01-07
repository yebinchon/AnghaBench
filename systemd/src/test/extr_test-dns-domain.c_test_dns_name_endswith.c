
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int test_dns_name_endswith_one (char*,char*,int) ;

__attribute__((used)) static void test_dns_name_endswith(void) {
        test_dns_name_endswith_one("", "", 1);
        test_dns_name_endswith_one("", "xxx", 0);
        test_dns_name_endswith_one("xxx", "", 1);
        test_dns_name_endswith_one("x", "x", 1);
        test_dns_name_endswith_one("x", "y", 0);
        test_dns_name_endswith_one("x.y", "y", 1);
        test_dns_name_endswith_one("x.y", "Y", 1);
        test_dns_name_endswith_one("x.y", "x", 0);
        test_dns_name_endswith_one("x.y.z", "Z", 1);
        test_dns_name_endswith_one("x.y.z", "y.Z", 1);
        test_dns_name_endswith_one("x.y.z", "x.y.Z", 1);
        test_dns_name_endswith_one("x.y.z", "waldo", 0);
        test_dns_name_endswith_one("x.y.z.u.v.w", "y.z", 0);
        test_dns_name_endswith_one("x.y.z.u.v.w", "u.v.w", 1);
        test_dns_name_endswith_one("x.y\001.z", "waldo", -EINVAL);
}
