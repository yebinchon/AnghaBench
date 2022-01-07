
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_msec_t ;
typedef int ngx_int_t ;
typedef int ngx_event_t ;
struct TYPE_6__ {int connection_n; int log; TYPE_1__* old_cycle; } ;
typedef TYPE_2__ ngx_cycle_t ;
struct TYPE_7__ {int actions; } ;
struct TYPE_5__ {int connection_n; } ;


 int FD_ZERO (int *) ;
 int NGX_ERROR ;
 int NGX_OK ;
 scalar_t__ NGX_PROCESS_WORKER ;
 int NGX_USE_LEVEL_EVENT ;
 int ** event_index ;
 int master_read_fd_set ;
 int master_write_fd_set ;
 scalar_t__ max_read ;
 scalar_t__ max_write ;
 int nevents ;
 int ** ngx_alloc (int,int ) ;
 int ngx_event_actions ;
 int ngx_event_flags ;
 int ngx_free (int **) ;
 int ngx_io ;
 int ngx_memcpy (int **,int **,int) ;
 int ngx_os_io ;
 scalar_t__ ngx_process ;
 TYPE_3__ ngx_select_module_ctx ;

__attribute__((used)) static ngx_int_t
ngx_select_init(ngx_cycle_t *cycle, ngx_msec_t timer)
{
    ngx_event_t **index;

    if (event_index == ((void*)0)) {
        FD_ZERO(&master_read_fd_set);
        FD_ZERO(&master_write_fd_set);
        nevents = 0;
    }

    if (ngx_process >= NGX_PROCESS_WORKER
        || cycle->old_cycle == ((void*)0)
        || cycle->old_cycle->connection_n < cycle->connection_n)
    {
        index = ngx_alloc(sizeof(ngx_event_t *) * 2 * cycle->connection_n,
                          cycle->log);
        if (index == ((void*)0)) {
            return NGX_ERROR;
        }

        if (event_index) {
            ngx_memcpy(index, event_index, sizeof(ngx_event_t *) * nevents);
            ngx_free(event_index);
        }

        event_index = index;
    }

    ngx_io = ngx_os_io;

    ngx_event_actions = ngx_select_module_ctx.actions;

    ngx_event_flags = NGX_USE_LEVEL_EVENT;

    max_read = 0;
    max_write = 0;

    return NGX_OK;
}
