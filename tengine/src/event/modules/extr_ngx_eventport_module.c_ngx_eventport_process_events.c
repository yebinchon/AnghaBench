
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int ngx_uint_t ;
typedef int ngx_queue_t ;
typedef int ngx_msec_t ;
typedef uintptr_t ngx_int_t ;
struct TYPE_11__ {uintptr_t instance; int ready; int (* handler ) (TYPE_1__*) ;int log; int accept; int closed; int active; TYPE_3__* data; } ;
typedef TYPE_1__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_12__ {int log; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_13__ {int fd; TYPE_1__* write; TYPE_1__* read; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_14__ {int portev_source; int portev_events; scalar_t__ portev_object; TYPE_1__* portev_user; } ;


 scalar_t__ ETIME ;
 scalar_t__ NGX_EINTR ;
 uintptr_t NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_INFO ;
 uintptr_t NGX_OK ;
 int NGX_POST_EVENTS ;
 int NGX_TIMER_INFINITE ;
 int NGX_UPDATE_TIME ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;

 int PORT_SOURCE_TIMER ;

 int ep ;
 TYPE_7__* event_list ;
 scalar_t__ nevents ;
 int ngx_accept_events ;
 scalar_t__ ngx_errno ;
 int ngx_log_debug1 (int ,int ,int ,char*,...) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_log_error (int,int ,scalar_t__,char*,...) ;
 int ngx_post_event (TYPE_1__*,int *) ;
 int ngx_posted_accept_events ;
 int ngx_posted_events ;
 int ngx_time_update () ;
 int ngx_use_accept_mutex ;
 int port_associate (int ,int const,int ,int,void*) ;
 int port_getn (int ,TYPE_7__*,int,int*,struct timespec*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_eventport_process_events(ngx_cycle_t *cycle, ngx_msec_t timer,
    ngx_uint_t flags)
{
    int n, revents;
    u_int events;
    ngx_err_t err;
    ngx_int_t instance;
    ngx_uint_t i, level;
    ngx_event_t *ev, *rev, *wev;
    ngx_queue_t *queue;
    ngx_connection_t *c;
    struct timespec ts, *tp;

    if (timer == NGX_TIMER_INFINITE) {
        tp = ((void*)0);

    } else {
        ts.tv_sec = timer / 1000;
        ts.tv_nsec = (timer % 1000) * 1000000;
        tp = &ts;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "eventport timer: %M", timer);

    events = 1;

    n = port_getn(ep, event_list, (u_int) nevents, &events, tp);

    err = ngx_errno;

    if (flags & NGX_UPDATE_TIME) {
        ngx_time_update();
    }

    if (n == -1) {
        if (err == ETIME) {
            if (timer != NGX_TIMER_INFINITE) {
                return NGX_OK;
            }

            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                          "port_getn() returned no events without timeout");
            return NGX_ERROR;
        }

        level = (err == NGX_EINTR) ? NGX_LOG_INFO : NGX_LOG_ALERT;
        ngx_log_error(level, cycle->log, err, "port_getn() failed");
        return NGX_ERROR;
    }

    if (events == 0) {
        if (timer != NGX_TIMER_INFINITE) {
            return NGX_OK;
        }

        ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                      "port_getn() returned no events without timeout");
        return NGX_ERROR;
    }

    for (i = 0; i < events; i++) {

        if (event_list[i].portev_source == PORT_SOURCE_TIMER) {
            ngx_time_update();
            continue;
        }

        ev = event_list[i].portev_user;

        switch (event_list[i].portev_source) {

        case 129:

            instance = (uintptr_t) ev & 1;
            ev = (ngx_event_t *) ((uintptr_t) ev & (uintptr_t) ~1);

            if (ev->closed || ev->instance != instance) {






                ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                               "eventport: stale event %p", ev);
                continue;
            }

            revents = event_list[i].portev_events;

            ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                           "eventport: fd:%d, ev:%04Xd",
                           (int) event_list[i].portev_object, revents);

            if (revents & (POLLERR|POLLHUP|POLLNVAL)) {
                ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                               "port_getn() error fd:%d ev:%04Xd",
                               (int) event_list[i].portev_object, revents);
            }

            if (revents & ~(POLLIN|POLLOUT|POLLERR|POLLHUP|POLLNVAL)) {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                              "strange port_getn() events fd:%d ev:%04Xd",
                              (int) event_list[i].portev_object, revents);
            }

            if (revents & (POLLERR|POLLHUP|POLLNVAL)) {






                revents |= POLLIN|POLLOUT;
            }

            c = ev->data;
            rev = c->read;
            wev = c->write;

            rev->active = 0;
            wev->active = 0;

            if (revents & POLLIN) {
                rev->ready = 1;

                if (flags & NGX_POST_EVENTS) {
                    queue = rev->accept ? &ngx_posted_accept_events
                                        : &ngx_posted_events;

                    ngx_post_event(rev, queue);

                } else {
                    rev->handler(rev);

                    if (ev->closed || ev->instance != instance) {
                        continue;
                    }
                }

                if (rev->accept) {
                    if (ngx_use_accept_mutex) {
                        ngx_accept_events = 1;
                        continue;
                    }

                    if (port_associate(ep, 129, c->fd, POLLIN,
                                       (void *) ((uintptr_t) ev | ev->instance))
                        == -1)
                    {
                        ngx_log_error(NGX_LOG_ALERT, ev->log, ngx_errno,
                                      "port_associate() failed");
                        return NGX_ERROR;
                    }
                }
            }

            if (revents & POLLOUT) {
                wev->ready = 1;

                if (flags & NGX_POST_EVENTS) {
                    ngx_post_event(wev, &ngx_posted_events);

                } else {
                    wev->handler(wev);
                }
            }

            continue;

        case 128:

            ev->handler(ev);

            continue;

        default:
            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                          "unexpected eventport object %d",
                          (int) event_list[i].portev_object);
            continue;
        }
    }

    return NGX_OK;
}
