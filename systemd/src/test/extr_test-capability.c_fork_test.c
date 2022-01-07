
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int EXIT_SUCCESS ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int assert_se (int) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void fork_test(void (*test_func)(void)) {
        pid_t pid = 0;

        pid = fork();
        assert_se(pid >= 0);
        if (pid == 0) {
                test_func();
                exit(EXIT_SUCCESS);
        } else if (pid > 0) {
                int status;

                assert_se(waitpid(pid, &status, 0) > 0);
                assert_se(WIFEXITED(status) && WEXITSTATUS(status) == 0);
        }
}
