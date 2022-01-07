
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int ) ;
 int env_value_is_valid (char*) ;

__attribute__((used)) static void test_env_value_is_valid(void) {
        assert_se(env_value_is_valid(""));
        assert_se(env_value_is_valid("głąb kapuściany"));
        assert_se(env_value_is_valid("printf \"\\x1b]0;<mock-chroot>\\x07<mock-chroot>\""));
        assert_se(env_value_is_valid("tab\tcharacter"));
        assert_se(env_value_is_valid("new\nline"));
}
