
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pollfd {int dummy; } ;
struct TYPE_6__ {int overflow_events; scalar_t__ signo; } ;
typedef TYPE_1__ ngx_rtsig_conf_t ;
typedef int ngx_msec_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int log; int conf_ctx; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_8__ {int actions; } ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int NGX_USE_FD_EVENT ;
 int NGX_USE_GREEDY_EVENT ;
 int NGX_USE_RTSIG_EVENT ;
 int SIGALRM ;
 int SIGIO ;
 int SIG_BLOCK ;
 int * ngx_alloc (int,int ) ;
 int ngx_errno ;
 int ngx_event_actions ;
 int ngx_event_flags ;
 TYPE_1__* ngx_event_get_conf (int ,int ) ;
 int ngx_free (int *) ;
 int ngx_io ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_os_io ;
 int ngx_rtsig_module ;
 TYPE_3__ ngx_rtsig_module_ctx ;
 int * overflow_list ;
 int set ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtsig_init(ngx_cycle_t *cycle, ngx_msec_t timer)
{
    ngx_rtsig_conf_t *rtscf;

    rtscf = ngx_event_get_conf(cycle->conf_ctx, ngx_rtsig_module);

    sigemptyset(&set);
    sigaddset(&set, (int) rtscf->signo);
    sigaddset(&set, (int) rtscf->signo + 1);
    sigaddset(&set, SIGIO);
    sigaddset(&set, SIGALRM);

    if (sigprocmask(SIG_BLOCK, &set, ((void*)0)) == -1) {
        ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                      "sigprocmask() failed");
        return NGX_ERROR;
    }

    if (overflow_list) {
        ngx_free(overflow_list);
    }

    overflow_list = ngx_alloc(sizeof(struct pollfd) * rtscf->overflow_events,
                              cycle->log);
    if (overflow_list == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_io = ngx_os_io;

    ngx_event_actions = ngx_rtsig_module_ctx.actions;

    ngx_event_flags = NGX_USE_RTSIG_EVENT
                      |NGX_USE_GREEDY_EVENT
                      |NGX_USE_FD_EVENT;

    return NGX_OK;
}
