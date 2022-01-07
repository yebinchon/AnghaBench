
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Condition ;


 int CONDITION_NULL ;
 int assert_se (int) ;
 int condition_free (int *) ;
 int * condition_new (int ,int *,int,int) ;
 scalar_t__ condition_test (int *) ;

__attribute__((used)) static void test_condition_test_null(void) {
        Condition *condition;

        condition = condition_new(CONDITION_NULL, ((void*)0), 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        condition = condition_new(CONDITION_NULL, ((void*)0), 0, 1);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);
}
