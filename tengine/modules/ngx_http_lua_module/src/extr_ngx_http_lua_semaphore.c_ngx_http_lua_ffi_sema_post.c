
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int resource_count; int sem_event; int wait_queue; } ;
typedef TYPE_1__ ngx_http_lua_sema_t ;
struct TYPE_6__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 TYPE_4__* ngx_cycle ;
 int ngx_log_debug3 (int ,int ,int ,char*,TYPE_1__*,int,int) ;
 int ngx_post_event (int *,int *) ;
 int ngx_posted_events ;
 int ngx_queue_empty (int *) ;

int
ngx_http_lua_ffi_sema_post(ngx_http_lua_sema_t *sem, int n)
{
    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "http lua semaphore post: %p, n: %d, resources: %d",
                   sem, n, sem->resource_count);

    sem->resource_count += n;

    if (!ngx_queue_empty(&sem->wait_queue)) {




        ngx_post_event((&sem->sem_event), &ngx_posted_events);
    }

    return NGX_OK;
}
