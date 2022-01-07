
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ timer_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int NGX_LOG_ALERT ;
 int close (int) ;
 int ep ;
 int * event_list ;
 scalar_t__ event_timer ;
 scalar_t__ nevents ;
 int ngx_errno ;
 int ngx_free (int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int timer_delete (scalar_t__) ;

__attribute__((used)) static void
ngx_eventport_done(ngx_cycle_t *cycle)
{
    if (event_timer != (timer_t) -1) {
        if (timer_delete(event_timer) == -1) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "timer_delete() failed");
        }

        event_timer = (timer_t) -1;
    }

    if (close(ep) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "close() event port failed");
    }

    ep = -1;

    ngx_free(event_list);

    event_list = ((void*)0);
    nevents = 0;
}
