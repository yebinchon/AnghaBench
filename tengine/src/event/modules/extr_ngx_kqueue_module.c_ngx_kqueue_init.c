
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {int flags; scalar_t__ udata; scalar_t__ data; scalar_t__ fflags; int filter; scalar_t__ ident; } ;
typedef scalar_t__ ngx_msec_t ;
struct TYPE_6__ {int changes; int events; } ;
typedef TYPE_1__ ngx_kqueue_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {int log; int conf_ctx; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_8__ {int actions; } ;


 int EVFILT_TIMER ;
 int EV_ADD ;
 int EV_ENABLE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int NGX_USE_CLEAR_EVENT ;
 int NGX_USE_KQUEUE_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 int NGX_USE_LOWAT_EVENT ;
 int NGX_USE_ONESHOT_EVENT ;
 int NGX_USE_TIMER_EVENT ;
 int NGX_USE_VNODE_EVENT ;
 struct kevent* change_list ;
 struct kevent* event_list ;
 int kevent (int,struct kevent*,int,int *,int ,struct timespec*) ;
 int kqueue () ;
 int max_changes ;
 scalar_t__ nchanges ;
 int nevents ;
 struct kevent* ngx_alloc (int,int ) ;
 int ngx_errno ;
 int ngx_event_actions ;
 int ngx_event_flags ;
 TYPE_1__* ngx_event_get_conf (int ,int ) ;
 int ngx_free (struct kevent*) ;
 int ngx_io ;
 int ngx_kqueue ;
 int ngx_kqueue_module ;
 TYPE_3__ ngx_kqueue_module_ctx ;
 scalar_t__ ngx_kqueue_notify_init (int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_os_io ;

__attribute__((used)) static ngx_int_t
ngx_kqueue_init(ngx_cycle_t *cycle, ngx_msec_t timer)
{
    ngx_kqueue_conf_t *kcf;
    struct timespec ts;




    kcf = ngx_event_get_conf(cycle->conf_ctx, ngx_kqueue_module);

    if (ngx_kqueue == -1) {
        ngx_kqueue = kqueue();

        if (ngx_kqueue == -1) {
            ngx_log_error(NGX_LOG_EMERG, cycle->log, ngx_errno,
                          "kqueue() failed");
            return NGX_ERROR;
        }






    }

    if (max_changes < kcf->changes) {
        if (nchanges) {
            ts.tv_sec = 0;
            ts.tv_nsec = 0;

            if (kevent(ngx_kqueue, change_list, (int) nchanges, ((void*)0), 0, &ts)
                == -1)
            {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                              "kevent() failed");
                return NGX_ERROR;
            }
            nchanges = 0;
        }

        if (change_list) {
            ngx_free(change_list);
        }

        change_list = ngx_alloc(kcf->changes * sizeof(struct kevent),
                                cycle->log);
        if (change_list == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    max_changes = kcf->changes;

    if (nevents < kcf->events) {
        if (event_list) {
            ngx_free(event_list);
        }

        event_list = ngx_alloc(kcf->events * sizeof(struct kevent), cycle->log);
        if (event_list == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    ngx_event_flags = NGX_USE_ONESHOT_EVENT
                      |NGX_USE_KQUEUE_EVENT
                      |NGX_USE_VNODE_EVENT;
    ngx_event_flags |= NGX_USE_LEVEL_EVENT;






    nevents = kcf->events;

    ngx_io = ngx_os_io;

    ngx_event_actions = ngx_kqueue_module_ctx.actions;

    return NGX_OK;
}
