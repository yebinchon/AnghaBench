
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Condition ;


 int CONDITION_KERNEL_COMMAND_LINE ;
 int assert_se (int) ;
 int condition_free (int *) ;
 int * condition_new (int ,char*,int,int) ;
 scalar_t__ condition_test (int *) ;

__attribute__((used)) static void test_condition_test_kernel_command_line(void) {
        Condition *condition;

        condition = condition_new(CONDITION_KERNEL_COMMAND_LINE, "thisreallyshouldntbeonthekernelcommandline", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_COMMAND_LINE, "andthis=neither", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);
}
