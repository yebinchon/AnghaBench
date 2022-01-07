
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_environment_gathering () ;
 int test_error_catching () ;
 int test_exec_command_flags_from_strv () ;
 int test_exec_command_flags_to_strv () ;
 int test_execute_directory (int) ;
 int test_execution_order () ;
 int test_setup_logging (int ) ;
 int test_stdout_gathering () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_execute_directory(1);
        test_execute_directory(0);
        test_execution_order();
        test_stdout_gathering();
        test_environment_gathering();
        test_error_catching();
        test_exec_command_flags_from_strv();
        test_exec_command_flags_to_strv();

        return 0;
}
