
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int test_dns_name_normalize_one (char*,char*,int ) ;

__attribute__((used)) static void test_dns_name_normalize(void) {
        test_dns_name_normalize_one("", ".", 0);
        test_dns_name_normalize_one("f", "f", 0);
        test_dns_name_normalize_one("f.waldi", "f.waldi", 0);
        test_dns_name_normalize_one("f \\032.waldi", "f\\032\\032.waldi", 0);
        test_dns_name_normalize_one("\\000", "\\000", 0);
        test_dns_name_normalize_one("..", ((void*)0), -EINVAL);
        test_dns_name_normalize_one(".foobar", ((void*)0), -EINVAL);
        test_dns_name_normalize_one("foobar.", "foobar", 0);
        test_dns_name_normalize_one(".", ".", 0);
}
