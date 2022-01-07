
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_msec_t ;
struct TYPE_6__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_POST_EVENTS ;
 int NGX_TIMER_INFINITE ;
 int NGX_UPDATE_TIME ;
 scalar_t__ ngx_accept_disabled ;
 int ngx_accept_mutex ;
 int ngx_accept_mutex_delay ;
 scalar_t__ ngx_accept_mutex_held ;
 int ngx_current_msec ;
 int ngx_event_expire_timers () ;
 int ngx_event_find_timer () ;
 int ngx_event_process_posted (TYPE_1__*,int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_posted_accept_events ;
 int ngx_posted_events ;
 int ngx_process_events (TYPE_1__*,int,int ) ;
 int ngx_shmtx_unlock (int *) ;
 scalar_t__ ngx_timer_resolution ;
 scalar_t__ ngx_trylock_accept_mutex (TYPE_1__*) ;
 scalar_t__ ngx_use_accept_mutex ;

void
ngx_process_events_and_timers(ngx_cycle_t *cycle)
{
    ngx_uint_t flags;
    ngx_msec_t timer, delta;

    if (ngx_timer_resolution) {
        timer = NGX_TIMER_INFINITE;
        flags = 0;

    } else {
        timer = ngx_event_find_timer();
        flags = NGX_UPDATE_TIME;
    }

    if (ngx_use_accept_mutex) {
        if (ngx_accept_disabled > 0) {
            ngx_accept_disabled--;

        } else {
            if (ngx_trylock_accept_mutex(cycle) == NGX_ERROR) {
                return;
            }

            if (ngx_accept_mutex_held) {
                flags |= NGX_POST_EVENTS;

            } else {
                if (timer == NGX_TIMER_INFINITE
                    || timer > ngx_accept_mutex_delay)
                {
                    timer = ngx_accept_mutex_delay;
                }
            }
        }
    }

    delta = ngx_current_msec;

    (void) ngx_process_events(cycle, timer, flags);

    delta = ngx_current_msec - delta;

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "timer delta: %M", delta);

    ngx_event_process_posted(cycle, &ngx_posted_accept_events);

    if (ngx_accept_mutex_held) {
        ngx_shmtx_unlock(&ngx_accept_mutex);
    }

    if (delta) {
        ngx_event_expire_timers();
    }

    ngx_event_process_posted(cycle, &ngx_posted_events);
}
