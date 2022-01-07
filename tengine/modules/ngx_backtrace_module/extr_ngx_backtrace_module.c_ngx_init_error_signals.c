
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {int sa_mask; int sa_handler; } ;
struct TYPE_3__ {scalar_t__ signo; int signame; int handler; } ;
typedef TYPE_1__ ngx_signal_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 TYPE_1__* ngx_backtrace_signals ;
 int ngx_errno ;
 int ngx_log_error (int ,int *,int ,char*,int ) ;
 int ngx_memzero (struct sigaction*,int) ;
 int sigaction (scalar_t__,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static ngx_int_t
ngx_init_error_signals(ngx_log_t *log)
{
    ngx_signal_t *sig;
    struct sigaction sa;

    for (sig = ngx_backtrace_signals; sig->signo != 0; sig++) {
        ngx_memzero(&sa, sizeof(struct sigaction));
        sa.sa_handler = sig->handler;
        sigemptyset(&sa.sa_mask);
        if (sigaction(sig->signo, &sa, ((void*)0)) == -1) {
            ngx_log_error(NGX_LOG_EMERG, log, ngx_errno,
                          "sigaction(%s) failed", sig->signame);
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
