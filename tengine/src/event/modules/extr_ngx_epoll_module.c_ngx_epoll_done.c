
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int NGX_LOG_ALERT ;
 int close (int) ;
 int ep ;
 int * event_list ;
 int io_destroy (scalar_t__) ;
 scalar_t__ nevents ;
 scalar_t__ ngx_aio_ctx ;
 int ngx_errno ;
 int ngx_eventfd ;
 int ngx_free (int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int notify_fd ;

__attribute__((used)) static void
ngx_epoll_done(ngx_cycle_t *cycle)
{
    if (close(ep) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "epoll close() failed");
    }

    ep = -1;
    ngx_free(event_list);

    event_list = ((void*)0);
    nevents = 0;
}
