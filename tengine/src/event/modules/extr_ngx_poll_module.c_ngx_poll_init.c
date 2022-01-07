
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pollfd {int dummy; } ;
typedef int ngx_msec_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {int connection_n; int log; TYPE_1__* old_cycle; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_7__ {int actions; } ;
struct TYPE_5__ {int connection_n; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 scalar_t__ NGX_PROCESS_WORKER ;
 int NGX_USE_FD_EVENT ;
 int NGX_USE_LEVEL_EVENT ;
 struct pollfd* event_list ;
 int nevents ;
 struct pollfd* ngx_alloc (int,int ) ;
 int ngx_event_actions ;
 int ngx_event_flags ;
 int ngx_free (struct pollfd*) ;
 int ngx_io ;
 int ngx_memcpy (struct pollfd*,struct pollfd*,int) ;
 int ngx_os_io ;
 TYPE_3__ ngx_poll_module_ctx ;
 scalar_t__ ngx_process ;

__attribute__((used)) static ngx_int_t
ngx_poll_init(ngx_cycle_t *cycle, ngx_msec_t timer)
{
    struct pollfd *list;

    if (event_list == ((void*)0)) {
        nevents = 0;
    }

    if (ngx_process >= NGX_PROCESS_WORKER
        || cycle->old_cycle == ((void*)0)
        || cycle->old_cycle->connection_n < cycle->connection_n)
    {
        list = ngx_alloc(sizeof(struct pollfd) * cycle->connection_n,
                         cycle->log);
        if (list == ((void*)0)) {
            return NGX_ERROR;
        }

        if (event_list) {
            ngx_memcpy(list, event_list, sizeof(struct pollfd) * nevents);
            ngx_free(event_list);
        }

        event_list = list;
    }

    ngx_io = ngx_os_io;

    ngx_event_actions = ngx_poll_module_ctx.actions;

    ngx_event_flags = NGX_USE_LEVEL_EVENT|NGX_USE_FD_EVENT;

    return NGX_OK;
}
