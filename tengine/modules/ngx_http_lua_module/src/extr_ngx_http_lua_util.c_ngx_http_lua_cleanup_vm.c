
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; int * vm; } ;
typedef TYPE_1__ ngx_http_lua_vm_state_t ;
typedef int lua_State ;
struct TYPE_5__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,int,int *) ;
 int lua_close (int *) ;
 TYPE_3__* ngx_cycle ;
 int ngx_free (TYPE_1__*) ;
 int ngx_http_lua_cleanup_conn_pools (int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;

void
ngx_http_lua_cleanup_vm(void *data)
{
    lua_State *L;
    ngx_http_lua_vm_state_t *state = data;







    if (state) {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "lua decrementing the reference count for Lua VM: %i",
                       state->count);

        if (--state->count == 0) {
            L = state->vm;
            ngx_http_lua_cleanup_conn_pools(L);
            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                           "lua close the global Lua VM %p", L);
            lua_close(L);
            ngx_free(state);
        }
    }
}
