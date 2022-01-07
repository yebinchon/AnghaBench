
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_13__ ;


typedef int rtsig_nr ;
typedef int rtsig_max ;
typedef size_t ngx_uint_t ;
struct TYPE_17__ {size_t overflow_events; size_t overflow_test; scalar_t__ overflow_threshold; } ;
typedef TYPE_1__ ngx_rtsig_conf_t ;
typedef int ngx_queue_t ;
typedef int ngx_msec_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {int ready; int (* handler ) (TYPE_2__*) ;int closed; scalar_t__ active; scalar_t__ accept; } ;
typedef TYPE_2__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_19__ {scalar_t__ connection_n; int log; TYPE_4__** files; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_20__ {int fd; TYPE_2__* write; TYPE_2__* read; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_21__ {int fd; int events; int revents; } ;
struct TYPE_16__ {int conf_ctx; } ;
struct TYPE_15__ {scalar_t__ (* process_events ) (TYPE_3__*,int ,size_t) ;} ;


 int CTL_KERN ;
 int KERN_RTSIGMAX ;
 int KERN_RTSIGNR ;
 scalar_t__ NGX_EINTR ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 size_t NGX_POST_EVENTS ;
 size_t NGX_UPDATE_TIME ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;
 int errno ;
 TYPE_14__* ngx_cycle ;
 scalar_t__ ngx_errno ;
 TYPE_13__ ngx_event_actions ;
 TYPE_1__* ngx_event_get_conf (int ,int ) ;
 scalar_t__ ngx_linux_rtsig_max ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_post_event (TYPE_2__*,int *) ;
 int ngx_posted_accept_events ;
 int ngx_posted_events ;
 int ngx_rtsig_module ;
 scalar_t__ ngx_rtsig_process_events (TYPE_3__*,int ,size_t) ;
 int ngx_time_update () ;
 scalar_t__ overflow ;
 scalar_t__ overflow_current ;
 TYPE_7__* overflow_list ;
 int poll (TYPE_7__*,size_t,int ) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtsig_process_overflow(ngx_cycle_t *cycle, ngx_msec_t timer,
    ngx_uint_t flags)
{
    int name[2], rtsig_max, rtsig_nr, events, ready;
    size_t len;
    ngx_err_t err;
    ngx_uint_t tested, n, i;
    ngx_event_t *rev, *wev;
    ngx_queue_t *queue;
    ngx_connection_t *c;
    ngx_rtsig_conf_t *rtscf;

    ngx_log_debug0(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "rtsig process overflow");

    rtscf = ngx_event_get_conf(ngx_cycle->conf_ctx, ngx_rtsig_module);

    tested = 0;

    for ( ;; ) {

        n = 0;
        while (n < rtscf->overflow_events) {

            if (overflow_current == cycle->connection_n) {
                break;
            }

            c = cycle->files[overflow_current++];

            if (c == ((void*)0) || c->fd == -1) {
                continue;
            }

            events = 0;

            if (c->read->active && c->read->handler) {
                events |= POLLIN;
            }

            if (c->write->active && c->write->handler) {
                events |= POLLOUT;
            }

            if (events == 0) {
                continue;
            }

            overflow_list[n].fd = c->fd;
            overflow_list[n].events = events;
            overflow_list[n].revents = 0;
            n++;
        }

        if (n == 0) {
            break;
        }

        for ( ;; ) {
            ready = poll(overflow_list, n, 0);

            ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                           "rtsig overflow poll:%d", ready);

            if (ready == -1) {
                err = ngx_errno;
                ngx_log_error((err == NGX_EINTR) ? NGX_LOG_INFO : NGX_LOG_ALERT,
                              cycle->log, 0,
                              "poll() failed while the overflow recover");

                if (err == NGX_EINTR) {
                    continue;
                }
            }

            break;
        }

        if (ready <= 0) {
            continue;
        }

        for (i = 0; i < n; i++) {
            c = cycle->files[overflow_list[i].fd];

            if (c == ((void*)0)) {
                continue;
            }

            rev = c->read;

            if (rev->active
                && !rev->closed
                && rev->handler
                && (overflow_list[i].revents
                                          & (POLLIN|POLLERR|POLLHUP|POLLNVAL)))
            {
                tested++;

                rev->ready = 1;

                if (flags & NGX_POST_EVENTS) {
                    queue = rev->accept ? &ngx_posted_accept_events
                                        : &ngx_posted_events;

                    ngx_post_event(rev, queue);

                } else {
                    rev->handler(rev);
                }
            }

            wev = c->write;

            if (wev->active
                && !wev->closed
                && wev->handler
                && (overflow_list[i].revents
                                         & (POLLOUT|POLLERR|POLLHUP|POLLNVAL)))
            {
                tested++;

                wev->ready = 1;

                if (flags & NGX_POST_EVENTS) {
                    ngx_post_event(wev, &ngx_posted_events);

                } else {
                    wev->handler(wev);
                }
            }
        }

        if (tested >= rtscf->overflow_test) {

            if (ngx_linux_rtsig_max) {
                name[0] = CTL_KERN;
                name[1] = KERN_RTSIGMAX;
                len = sizeof(rtsig_max);

                if (sysctl(name, 2, &rtsig_max, &len, ((void*)0), 0) == -1) {
                    ngx_log_error(NGX_LOG_ALERT, cycle->log, errno,
                                  "sysctl(KERN_RTSIGMAX) failed");
                    return NGX_ERROR;
                }


                name[1] = KERN_RTSIGNR;
                len = sizeof(rtsig_nr);

                if (sysctl(name, 2, &rtsig_nr, &len, ((void*)0), 0) == -1) {
                    ngx_log_error(NGX_LOG_ALERT, cycle->log, errno,
                                  "sysctl(KERN_RTSIGNR) failed");
                    return NGX_ERROR;
                }







                if (rtsig_max / (int) rtscf->overflow_threshold < rtsig_nr) {
                    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                                   "rtsig queue state: %d/%d",
                                   rtsig_nr, rtsig_max);
                    while (ngx_rtsig_process_events(cycle, 0, flags) == NGX_OK)
                    {

                    }
                }

            } else {






                while (ngx_rtsig_process_events(cycle, 0, flags) == NGX_OK) {

                }
            }

            tested = 0;
        }
    }

    if (flags & NGX_UPDATE_TIME) {
        ngx_time_update();
    }

    ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                  "rt signal queue overflow recovered");

    overflow = 0;
    ngx_event_actions.process_events = ngx_rtsig_process_events;

    return NGX_OK;
}
