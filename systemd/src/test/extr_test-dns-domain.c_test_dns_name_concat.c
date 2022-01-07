
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_dns_name_concat_one (char*,char*,int ,char*) ;

__attribute__((used)) static void test_dns_name_concat(void) {
        test_dns_name_concat_one("", "", 0, ".");
        test_dns_name_concat_one(".", "", 0, ".");
        test_dns_name_concat_one("", ".", 0, ".");
        test_dns_name_concat_one(".", ".", 0, ".");
        test_dns_name_concat_one("foo", "bar", 0, "foo.bar");
        test_dns_name_concat_one("foo.foo", "bar.bar", 0, "foo.foo.bar.bar");
        test_dns_name_concat_one("foo", ((void*)0), 0, "foo");
        test_dns_name_concat_one("foo", ".", 0, "foo");
        test_dns_name_concat_one("foo.", "bar.", 0, "foo.bar");
        test_dns_name_concat_one(((void*)0), ((void*)0), 0, ".");
        test_dns_name_concat_one(((void*)0), ".", 0, ".");
        test_dns_name_concat_one(((void*)0), "foo", 0, "foo");
}
