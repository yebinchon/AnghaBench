
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int string_has_cc (char*,char*) ;

__attribute__((used)) static void test_string_has_cc(void) {
        assert_se(string_has_cc("abc\1", ((void*)0)));
        assert_se(string_has_cc("abc\x7f", ((void*)0)));
        assert_se(string_has_cc("abc\x7f", ((void*)0)));
        assert_se(string_has_cc("abc\t\x7f", "\t"));
        assert_se(string_has_cc("abc\t\x7f", "\t"));
        assert_se(string_has_cc("\x7f", "\t"));
        assert_se(string_has_cc("\x7f", "\t\a"));

        assert_se(!string_has_cc("abc\t\t", "\t"));
        assert_se(!string_has_cc("abc\t\t\a", "\t\a"));
        assert_se(!string_has_cc("a\ab\tc", "\t\a"));
}
