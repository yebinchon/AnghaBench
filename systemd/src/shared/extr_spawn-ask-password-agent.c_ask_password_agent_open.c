
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int STDIN_FILENO ;
 int SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH ;
 scalar_t__ agent_pid ;
 int fork_agent (char*,int *,int ,scalar_t__*,int ,int ,char*,int *) ;
 int is_main_thread () ;
 int isatty (int ) ;
 int log_error_errno (int,char*) ;

int ask_password_agent_open(void) {
        int r;

        if (agent_pid > 0)
                return 0;



        if (!isatty(STDIN_FILENO))
                return 0;

        if (!is_main_thread())
                return -EPERM;

        r = fork_agent("(sd-askpwagent)",
                       ((void*)0), 0,
                       &agent_pid,
                       SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH,
                       SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH, "--watch", ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Failed to fork TTY ask password agent: %m");

        return 1;
}
