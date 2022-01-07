
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int test_dnssec_canonicalize_one (char*,char*,int) ;

__attribute__((used)) static void test_dnssec_canonicalize(void) {
        test_dnssec_canonicalize_one("", ".", 1);
        test_dnssec_canonicalize_one(".", ".", 1);
        test_dnssec_canonicalize_one("foo", "foo.", 4);
        test_dnssec_canonicalize_one("foo.", "foo.", 4);
        test_dnssec_canonicalize_one("FOO.", "foo.", 4);
        test_dnssec_canonicalize_one("FOO.bar.", "foo.bar.", 8);
        test_dnssec_canonicalize_one("FOO..bar.", ((void*)0), -EINVAL);
}
