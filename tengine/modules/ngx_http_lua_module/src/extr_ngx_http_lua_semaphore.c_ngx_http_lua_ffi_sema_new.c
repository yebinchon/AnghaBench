
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int resource_count; scalar_t__ wait_count; int wait_queue; } ;
typedef TYPE_1__ ngx_http_lua_sema_t ;
struct TYPE_7__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 TYPE_5__* ngx_cycle ;
 TYPE_1__* ngx_http_lua_alloc_sema () ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_1__*,int) ;
 int ngx_queue_init (int *) ;

int
ngx_http_lua_ffi_sema_new(ngx_http_lua_sema_t **psem,
    int n, char **errmsg)
{
    ngx_http_lua_sema_t *sem;

    sem = ngx_http_lua_alloc_sema();
    if (sem == ((void*)0)) {
        *errmsg = "no memory";
        return NGX_ERROR;
    }

    ngx_queue_init(&sem->wait_queue);

    sem->resource_count = n;
    sem->wait_count = 0;
    *psem = sem;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "http lua semaphore new: %p, resources: %d",
                   sem, sem->resource_count);

    return NGX_OK;
}
