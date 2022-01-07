
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecCommandFlags ;


 int EINVAL ;
 int EXEC_COMMAND_AMBIENT_MAGIC ;
 int EXEC_COMMAND_FULLY_PRIVILEGED ;
 int EXEC_COMMAND_IGNORE_FAILURE ;
 int EXEC_COMMAND_NO_ENV_EXPAND ;
 int EXEC_COMMAND_NO_SETUID ;
 int FLAGS_SET (int ,int ) ;
 char** STRV_MAKE (char*,char*,char*,...) ;
 int assert_se (int) ;
 int exec_command_flags_from_strv (char**,int *) ;

__attribute__((used)) static void test_exec_command_flags_from_strv(void) {
        ExecCommandFlags flags = 0;
        char **valid_strv = STRV_MAKE("no-env-expand", "no-setuid", "ignore-failure");
        char **invalid_strv = STRV_MAKE("no-env-expand", "no-setuid", "nonexistent-option", "ignore-failure");
        int r;

        r = exec_command_flags_from_strv(valid_strv, &flags);

        assert_se(r == 0);
        assert_se(FLAGS_SET(flags, EXEC_COMMAND_NO_ENV_EXPAND));
        assert_se(FLAGS_SET(flags, EXEC_COMMAND_NO_SETUID));
        assert_se(FLAGS_SET(flags, EXEC_COMMAND_IGNORE_FAILURE));
        assert_se(!FLAGS_SET(flags, EXEC_COMMAND_AMBIENT_MAGIC));
        assert_se(!FLAGS_SET(flags, EXEC_COMMAND_FULLY_PRIVILEGED));

        r = exec_command_flags_from_strv(invalid_strv, &flags);

        assert_se(r == -EINVAL);
}
