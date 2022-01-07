
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int LOG_DEBUG ;
 int TEST_REQ_RUNNING_SYSTEMD (int ) ;
 int getpid () ;
 int parse_pid (char*,int*) ;
 int save_argc_argv (int,char**) ;
 int test_get_process_cmdline_harder () ;
 int test_get_process_comm (int) ;
 int test_get_process_comm_escape () ;
 int test_getpid_cached () ;
 int test_getpid_measure () ;
 int test_ioprio_class_from_to_string () ;
 int test_personality () ;
 int test_pid_is_alive () ;
 int test_pid_is_unwaited () ;
 int test_pid_to_ptr () ;
 int test_rename_process () ;
 int test_safe_fork () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        save_argc_argv(argc, argv);

        if (argc > 1) {
                pid_t pid = 0;

                (void) parse_pid(argv[1], &pid);
                test_get_process_comm(pid);
        } else {
                TEST_REQ_RUNNING_SYSTEMD(test_get_process_comm(1));
                test_get_process_comm(getpid());
        }

        test_get_process_comm_escape();
        test_pid_is_unwaited();
        test_pid_is_alive();
        test_personality();
        test_get_process_cmdline_harder();
        test_rename_process();
        test_getpid_cached();
        test_getpid_measure();
        test_safe_fork();
        test_pid_to_ptr();
        test_ioprio_class_from_to_string();

        return 0;
}
