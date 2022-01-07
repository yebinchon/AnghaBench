
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 scalar_t__ agent_pid ;
 int kill_and_sigcont (scalar_t__,int ) ;
 int wait_for_terminate (scalar_t__,int *) ;

void ask_password_agent_close(void) {

        if (agent_pid <= 0)
                return;


        (void) kill_and_sigcont(agent_pid, SIGTERM);
        (void) wait_for_terminate(agent_pid, ((void*)0));
        agent_pid = 0;
}
