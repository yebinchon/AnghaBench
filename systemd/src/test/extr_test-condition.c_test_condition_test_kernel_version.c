
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char const* release; } ;
typedef int Condition ;


 int CONDITION_KERNEL_VERSION ;
 int EINVAL ;
 int assert_se (int) ;
 int condition_free (int *) ;
 int * condition_new (int ,char const*,int,int) ;
 int condition_test (int *) ;
 int strchr (char const*,int ) ;
 int strcpy (int ,char*) ;
 char* strjoina (char*,char const*) ;
 int strshorten (char const*,int) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static void test_condition_test_kernel_version(void) {
        Condition *condition;
        struct utsname u;
        const char *v;

        condition = condition_new(CONDITION_KERNEL_VERSION, "*thisreallyshouldntbeinthekernelversion*", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "*", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);



        condition = condition_new(CONDITION_KERNEL_VERSION, "", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        assert_se(uname(&u) >= 0);

        condition = condition_new(CONDITION_KERNEL_VERSION, u.release, 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        strshorten(u.release, 4);
        strcpy(strchr(u.release, 0), "*");

        condition = condition_new(CONDITION_KERNEL_VERSION, u.release, 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);


        condition = condition_new(CONDITION_KERNEL_VERSION, "> 0.1.2", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, ">0.1.2", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "'>0.1.2' '<9.0.0'", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "> 0.1.2 < 9.0.0", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == -EINVAL);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, ">", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == -EINVAL);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, ">= 0.1.2", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "< 0.1.2", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "<= 0.1.2", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "= 0.1.2", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);


        condition = condition_new(CONDITION_KERNEL_VERSION, "< 4711.8.15", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "<= 4711.8.15", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "= 4711.8.15", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, "> 4711.8.15", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        condition = condition_new(CONDITION_KERNEL_VERSION, ">= 4711.8.15", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        assert_se(uname(&u) >= 0);

        v = strjoina(">=", u.release);
        condition = condition_new(CONDITION_KERNEL_VERSION, v, 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        v = strjoina("=  ", u.release);
        condition = condition_new(CONDITION_KERNEL_VERSION, v, 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        v = strjoina("<=", u.release);
        condition = condition_new(CONDITION_KERNEL_VERSION, v, 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) > 0);
        condition_free(condition);

        v = strjoina("> ", u.release);
        condition = condition_new(CONDITION_KERNEL_VERSION, v, 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        v = strjoina("<   ", u.release);
        condition = condition_new(CONDITION_KERNEL_VERSION, v, 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);
}
