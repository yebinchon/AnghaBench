
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_sigaction; } ;


 int SA_SIGINFO ;
 int SIGBUS ;
 int assert_se (int) ;
 int n_installed ;
 int old_sigaction ;
 int page_size () ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigbus_handler ;

void sigbus_install(void) {
        struct sigaction sa = {
                .sa_sigaction = sigbus_handler,
                .sa_flags = SA_SIGINFO,
        };



        (void) page_size();

        n_installed++;

        if (n_installed == 1)
                assert_se(sigaction(SIGBUS, &sa, &old_sigaction) == 0);

        return;
}
