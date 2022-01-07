
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGTERM ;
 int assert (int) ;
 scalar_t__ kill_and_sigcont (int,int ) ;
 int wait_for_terminate (int,int *) ;

void sigterm_wait(pid_t pid) {
        assert(pid > 1);

        if (kill_and_sigcont(pid, SIGTERM) >= 0)
                (void) wait_for_terminate(pid, ((void*)0));
}
