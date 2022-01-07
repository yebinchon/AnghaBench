
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int * vm; } ;
typedef TYPE_1__ ngx_http_lua_ngx_ctx_cleanup_data_t ;
typedef int lua_State ;
struct TYPE_4__ {int log; } ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_DEBUG_HTTP ;
 int luaL_unref (int *,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushliteral (int *,int ) ;
 int lua_rawget (int *,int ) ;
 TYPE_2__* ngx_cycle ;
 int ngx_http_lua_ctx_tables_key ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;

__attribute__((used)) static void
ngx_http_lua_ngx_ctx_cleanup(void *data)
{
    lua_State *L;

    ngx_http_lua_ngx_ctx_cleanup_data_t *clndata = data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "lua release ngx.ctx at ref %d", clndata->ref);

    L = clndata->vm;

    lua_pushliteral(L, ngx_http_lua_ctx_tables_key);
    lua_rawget(L, LUA_REGISTRYINDEX);
    luaL_unref(L, -1, clndata->ref);
    lua_pop(L, 1);
}
