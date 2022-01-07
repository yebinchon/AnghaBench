
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int NGX_LOG_ALERT ;
 int * change_index ;
 int * change_list ;
 int close (int) ;
 int dp ;
 int * event_list ;
 scalar_t__ max_changes ;
 scalar_t__ nchanges ;
 scalar_t__ nevents ;
 int ngx_errno ;
 int ngx_free (int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_devpoll_done(ngx_cycle_t *cycle)
{
    if (close(dp) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "close(/dev/poll) failed");
    }

    dp = -1;

    ngx_free(change_list);
    ngx_free(event_list);
    ngx_free(change_index);

    change_list = ((void*)0);
    event_list = ((void*)0);
    change_index = ((void*)0);
    max_changes = 0;
    nchanges = 0;
    nevents = 0;
}
