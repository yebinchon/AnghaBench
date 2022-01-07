
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ strcmp_ptr (char*,char*) ;

__attribute__((used)) static void test_strcmp_ptr(void) {
        assert_se(strcmp_ptr(((void*)0), ((void*)0)) == 0);
        assert_se(strcmp_ptr("", ((void*)0)) > 0);
        assert_se(strcmp_ptr("foo", ((void*)0)) > 0);
        assert_se(strcmp_ptr(((void*)0), "") < 0);
        assert_se(strcmp_ptr(((void*)0), "bar") < 0);
        assert_se(strcmp_ptr("foo", "bar") > 0);
        assert_se(strcmp_ptr("bar", "baz") < 0);
        assert_se(strcmp_ptr("foo", "foo") == 0);
        assert_se(strcmp_ptr("", "") == 0);
}
