
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_code; scalar_t__ si_status; } ;
typedef TYPE_1__ siginfo_t ;
typedef scalar_t__ pid_t ;


 scalar_t__ CLD_EXITED ;
 scalar_t__ EXIT_SUCCESS ;
 int _exit (scalar_t__) ;
 int assert_se (int) ;
 scalar_t__ fork () ;
 int test_rename_process_now (char const*,int) ;
 scalar_t__ wait_for_terminate (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void test_rename_process_one(const char *p, int ret) {
        siginfo_t si;
        pid_t pid;

        pid = fork();
        assert_se(pid >= 0);

        if (pid == 0) {

                test_rename_process_now(p, ret);
                _exit(EXIT_SUCCESS);
        }

        assert_se(wait_for_terminate(pid, &si) >= 0);
        assert_se(si.si_code == CLD_EXITED);
        assert_se(si.si_status == EXIT_SUCCESS);
}
