
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCONT ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int close (int ) ;
 scalar_t__ dup2 (scalar_t__,int ) ;
 int fflush (int ) ;
 int kill (scalar_t__,int ) ;
 scalar_t__ pager_pid ;
 scalar_t__ safe_close (scalar_t__) ;
 int stderr ;
 int stderr_redirected ;
 int stdout ;
 int stdout_redirected ;
 scalar_t__ stored_stderr ;
 scalar_t__ stored_stdout ;
 int wait_for_terminate (scalar_t__,int *) ;

void pager_close(void) {

        if (pager_pid <= 0)
                return;


        (void) fflush(stdout);
        if (stdout_redirected)
                if (stored_stdout < 0 || dup2(stored_stdout, STDOUT_FILENO) < 0)
                        (void) close(STDOUT_FILENO);
        stored_stdout = safe_close(stored_stdout);
        (void) fflush(stderr);
        if (stderr_redirected)
                if (stored_stderr < 0 || dup2(stored_stderr, STDERR_FILENO) < 0)
                        (void) close(STDERR_FILENO);
        stored_stderr = safe_close(stored_stderr);
        stdout_redirected = stderr_redirected = 0;

        (void) kill(pager_pid, SIGCONT);
        (void) wait_for_terminate(pager_pid, ((void*)0));
        pager_pid = 0;
}
