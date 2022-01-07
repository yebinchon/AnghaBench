
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ si_code; scalar_t__ si_status; } ;
typedef TYPE_1__ siginfo_t ;
typedef scalar_t__ pid_t ;


 scalar_t__ CLD_EXITED ;
 int EINVAL ;
 scalar_t__ EXIT_SUCCESS ;
 int _exit (scalar_t__) ;
 int assert_se (int) ;
 scalar_t__ fork () ;
 int setresuid (int,int,int) ;
 int test_rename_process_now (char*,int) ;
 int test_rename_process_one (char*,int ) ;
 scalar_t__ wait_for_terminate (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void test_rename_process_multi(void) {
        pid_t pid;

        pid = fork();
        assert_se(pid >= 0);

        if (pid > 0) {
                siginfo_t si;

                assert_se(wait_for_terminate(pid, &si) >= 0);
                assert_se(si.si_code == CLD_EXITED);
                assert_se(si.si_status == EXIT_SUCCESS);

                return;
        }


        test_rename_process_now("one", 1);
        test_rename_process_now("more", 0);
        (void) setresuid(99, 99, 99);
        test_rename_process_now("time!", 0);
        test_rename_process_now("0", 1);
        test_rename_process_one("", -EINVAL);
        test_rename_process_one(((void*)0), -EINVAL);
        _exit(EXIT_SUCCESS);
}
