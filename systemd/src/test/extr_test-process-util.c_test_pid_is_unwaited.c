
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int EXIT_SUCCESS ;
 int _exit (int ) ;
 int assert_se (int) ;
 scalar_t__ fork () ;
 int getpid_cached () ;
 int pid_is_unwaited (int) ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void test_pid_is_unwaited(void) {
        pid_t pid;

        pid = fork();
        assert_se(pid >= 0);
        if (pid == 0) {
                _exit(EXIT_SUCCESS);
        } else {
                int status;

                waitpid(pid, &status, 0);
                assert_se(!pid_is_unwaited(pid));
        }
        assert_se(pid_is_unwaited(getpid_cached()));
        assert_se(!pid_is_unwaited(-1));
}
