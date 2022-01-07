
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_pid_t ;
typedef size_t ngx_int_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_4__ {int log; } ;
struct TYPE_3__ {int pid; int status; int exited; char* name; scalar_t__ respawn; } ;


 scalar_t__ NGX_ECHILD ;
 scalar_t__ NGX_EINTR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_INFO ;
 int NGX_LOG_NOTICE ;
 scalar_t__ WCOREDUMP (int) ;
 int WEXITSTATUS (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 TYPE_2__* ngx_cycle ;
 scalar_t__ ngx_errno ;
 size_t ngx_last_process ;
 int ngx_log_error (int ,int ,scalar_t__,char*,...) ;
 int ngx_pipe_broken_action (int ,int,int) ;
 TYPE_1__* ngx_processes ;
 int ngx_unlock_mutexes (int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
ngx_process_get_status(void)
{
    int status;
    char *process;
    ngx_pid_t pid;
    ngx_err_t err;
    ngx_int_t i;
    ngx_uint_t one;

    one = 0;

    for ( ;; ) {
        pid = waitpid(-1, &status, WNOHANG);

        if (pid == 0) {
            return;
        }

        if (pid == -1) {
            err = ngx_errno;

            if (err == NGX_EINTR) {
                continue;
            }

            if (err == NGX_ECHILD && one) {
                return;
            }
            if (err == NGX_ECHILD) {
                ngx_log_error(NGX_LOG_INFO, ngx_cycle->log, err,
                              "waitpid() failed");
                return;
            }

            ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, err,
                          "waitpid() failed");
            return;
        }


        one = 1;
        process = "unknown process";

        for (i = 0; i < ngx_last_process; i++) {
            if (ngx_processes[i].pid == pid) {
                ngx_processes[i].status = status;
                ngx_processes[i].exited = 1;
                process = ngx_processes[i].name;
                break;
            }
        }
        if (WTERMSIG(status)) {






            ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "%s %P exited on signal %d",
                          process, pid, WTERMSIG(status));


        } else {
            ngx_log_error(NGX_LOG_NOTICE, ngx_cycle->log, 0,
                          "%s %P exited with code %d",
                          process, pid, WEXITSTATUS(status));
        }

        if (WEXITSTATUS(status) == 2 && ngx_processes[i].respawn) {
            ngx_log_error(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "%s %P exited with fatal code %d "
                          "and cannot be respawned",
                          process, pid, WEXITSTATUS(status));
            ngx_processes[i].respawn = 0;
        }

        ngx_unlock_mutexes(pid);
    }
}
