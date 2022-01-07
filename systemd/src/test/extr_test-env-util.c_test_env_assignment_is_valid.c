
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int env_assignment_is_valid (char*) ;

__attribute__((used)) static void test_env_assignment_is_valid(void) {
        assert_se(env_assignment_is_valid("a="));
        assert_se(env_assignment_is_valid("b=głąb kapuściany"));
        assert_se(env_assignment_is_valid("c=\\007\\009\\011"));
        assert_se(env_assignment_is_valid("e=printf \"\\x1b]0;<mock-chroot>\\x07<mock-chroot>\""));
        assert_se(env_assignment_is_valid("f=tab\tcharacter"));
        assert_se(env_assignment_is_valid("g=new\nline"));

        assert_se(!env_assignment_is_valid("="));
        assert_se(!env_assignment_is_valid("a b="));
        assert_se(!env_assignment_is_valid("a ="));
        assert_se(!env_assignment_is_valid(" b="));

        assert_se(!env_assignment_is_valid("a.b="));
        assert_se(!env_assignment_is_valid("a-b="));
        assert_se(!env_assignment_is_valid("\007=głąb kapuściany"));
        assert_se(!env_assignment_is_valid("c\009=\007\009\011"));
        assert_se(!env_assignment_is_valid("głąb=printf \"\x1b]0;<mock-chroot>\x07<mock-chroot>\""));
}
