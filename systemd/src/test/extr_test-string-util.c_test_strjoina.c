
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int ) ;
 int streq (char*,char*) ;
 char* strjoina (char*,...) ;

__attribute__((used)) static void test_strjoina(void) {
        char *actual;

        actual = strjoina("", "foo", "bar");
        assert_se(streq(actual, "foobar"));

        actual = strjoina("foo", "bar", "baz");
        assert_se(streq(actual, "foobarbaz"));

        actual = strjoina("foo", "", "bar", "baz");
        assert_se(streq(actual, "foobarbaz"));

        actual = strjoina("foo");
        assert_se(streq(actual, "foo"));

        actual = strjoina(((void*)0));
        assert_se(streq(actual, ""));

        actual = strjoina(((void*)0), "foo");
        assert_se(streq(actual, ""));

        actual = strjoina("foo", ((void*)0), "bar");
        assert_se(streq(actual, "foo"));
}
