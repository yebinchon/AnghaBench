
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int BLOCK_SIGNALS (int ,int ) ;
 int SIGALRM ;
 int SIGUSR1 ;
 int SIGVTALRM ;
 int assert_se (int) ;
 int sigismember (int *,int ) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void test_block_signals(void) {
        sigset_t ss;

        assert_se(sigprocmask(0, ((void*)0), &ss) >= 0);

        assert_se(sigismember(&ss, SIGUSR1) == 0);
        assert_se(sigismember(&ss, SIGALRM) == 0);
        assert_se(sigismember(&ss, SIGVTALRM) == 0);

        {
                BLOCK_SIGNALS(SIGUSR1, SIGVTALRM);

                assert_se(sigprocmask(0, ((void*)0), &ss) >= 0);
                assert_se(sigismember(&ss, SIGUSR1) == 1);
                assert_se(sigismember(&ss, SIGALRM) == 0);
                assert_se(sigismember(&ss, SIGVTALRM) == 1);

        }

        assert_se(sigprocmask(0, ((void*)0), &ss) >= 0);
        assert_se(sigismember(&ss, SIGUSR1) == 0);
        assert_se(sigismember(&ss, SIGALRM) == 0);
        assert_se(sigismember(&ss, SIGVTALRM) == 0);
}
