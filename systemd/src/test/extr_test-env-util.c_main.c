
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_env_assignment_is_valid () ;
 int test_env_clean () ;
 int test_env_name_is_valid () ;
 int test_env_strv_get_n () ;
 int test_env_value_is_valid () ;
 int test_replace_env (int) ;
 int test_replace_env2 (int) ;
 int test_replace_env_argv () ;
 int test_strv_env_delete () ;
 int test_strv_env_get () ;
 int test_strv_env_merge () ;
 int test_strv_env_set () ;
 int test_strv_env_unset () ;

int main(int argc, char *argv[]) {
        test_strv_env_delete();
        test_strv_env_get();
        test_strv_env_unset();
        test_strv_env_set();
        test_strv_env_merge();
        test_env_strv_get_n();
        test_replace_env(0);
        test_replace_env(1);
        test_replace_env2(0);
        test_replace_env2(1);
        test_replace_env_argv();
        test_env_clean();
        test_env_name_is_valid();
        test_env_value_is_valid();
        test_env_assignment_is_valid();

        return 0;
}
