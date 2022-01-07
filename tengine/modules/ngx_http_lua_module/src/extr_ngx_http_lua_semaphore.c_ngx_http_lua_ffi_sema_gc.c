
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wait_queue; } ;
typedef TYPE_1__ ngx_http_lua_sema_t ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 TYPE_6__* ngx_cycle ;
 int ngx_http_lua_free_sema (TYPE_1__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_1__*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_1__*) ;
 int ngx_queue_empty (int *) ;
 int ngx_quit ;
 int ngx_terminate ;

void
ngx_http_lua_ffi_sema_gc(ngx_http_lua_sema_t *sem)
{
    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "in lua gc, semaphore %p", sem);

    if (sem == ((void*)0)) {
        return;
    }

    if (!ngx_terminate
        && !ngx_quit
        && !ngx_queue_empty(&sem->wait_queue))
    {
        ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                      "in lua semaphore gc wait queue is"
                      " not empty while the semaphore %p is being "
                      "destroyed", sem);
    }

    ngx_http_lua_free_sema(sem);
}
