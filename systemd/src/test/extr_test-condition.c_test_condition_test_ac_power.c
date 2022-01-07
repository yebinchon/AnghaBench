
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Condition ;


 int CONDITION_AC_POWER ;
 int assert_se (int) ;
 int condition_free (int *) ;
 int * condition_new (int ,char*,int,int) ;
 scalar_t__ condition_test (int *) ;
 scalar_t__ on_ac_power () ;

__attribute__((used)) static void test_condition_test_ac_power(void) {
        Condition *condition;

        condition = condition_new(CONDITION_AC_POWER, "true", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == on_ac_power());
        condition_free(condition);

        condition = condition_new(CONDITION_AC_POWER, "false", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) != on_ac_power());
        condition_free(condition);

        condition = condition_new(CONDITION_AC_POWER, "false", 0, 1);
        assert_se(condition);
        assert_se(condition_test(condition) == on_ac_power());
        condition_free(condition);
}
