
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Condition ;


 int CONDITION_CPUS ;
 int assert_se (int) ;
 int condition_free (int *) ;
 int * condition_new (int ,char const*,int,int) ;
 int condition_test (int *) ;
 int condition_type_to_string (int ) ;
 int log_debug (char*,int ,char const*) ;

__attribute__((used)) static void test_condition_test_cpus_one(const char *s, bool result) {
        Condition *condition;
        int r;

        log_debug("%s=%s", condition_type_to_string(CONDITION_CPUS), s);

        condition = condition_new(CONDITION_CPUS, s, 0, 0);
        assert_se(condition);

        r = condition_test(condition);
        assert_se(r >= 0);
        assert_se(r == result);
        condition_free(condition);
}
