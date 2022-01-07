
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ posted; scalar_t__ timer_set; } ;
struct TYPE_5__ {TYPE_2__ sleep; } ;
typedef TYPE_1__ ngx_http_lua_co_ctx_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_4__* ngx_cycle ;
 int ngx_del_timer (TYPE_2__*) ;
 int ngx_delete_posted_event (TYPE_2__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_lua_sleep_cleanup(void *data)
{
    ngx_http_lua_co_ctx_t *coctx = data;

    if (coctx->sleep.timer_set) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "lua clean up the timer for pending ngx.sleep");

        ngx_del_timer(&coctx->sleep);
    }
}
