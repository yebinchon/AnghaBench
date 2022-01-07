
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ signo; int name; } ;
typedef TYPE_1__ ngx_signal_t ;
typedef int ngx_pid_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {int log; } ;
typedef TYPE_2__ ngx_cycle_t ;


 int NGX_LOG_ALERT ;
 int kill (int ,scalar_t__) ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,int ,scalar_t__) ;
 scalar_t__ ngx_strcmp (char*,int ) ;
 TYPE_1__* signals ;

ngx_int_t
ngx_os_signal_process(ngx_cycle_t *cycle, char *name, ngx_pid_t pid)
{
    ngx_signal_t *sig;

    for (sig = signals; sig->signo != 0; sig++) {
        if (ngx_strcmp(name, sig->name) == 0) {
            if (kill(pid, sig->signo) != -1) {
                return 0;
            }

            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "kill(%P, %d) failed", pid, sig->signo);
        }
    }

    return 1;
}
