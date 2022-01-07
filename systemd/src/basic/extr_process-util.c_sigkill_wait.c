
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SIGKILL ;
 int assert (int) ;
 scalar_t__ kill (int,int ) ;
 int wait_for_terminate (int,int *) ;

void sigkill_wait(pid_t pid) {
        assert(pid > 1);

        if (kill(pid, SIGKILL) >= 0)
                (void) wait_for_terminate(pid, ((void*)0));
}
