
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log; } ;


 int NGX_LOG_DEBUG_EVENT ;
 TYPE_1__* ngx_cycle ;
 int ngx_event_timer_alarm ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_timer_signal_handler(int signo)
{
    ngx_event_timer_alarm = 1;


    ngx_log_debug0(NGX_LOG_DEBUG_EVENT, ngx_cycle->log, 0, "timer signal");

}
