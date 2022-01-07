
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
struct TYPE_9__ {scalar_t__ co_ref; int co_status; int co; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_7__ {int log; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NGX_HTTP_LUA_CO_DEAD ;
 int NGX_LOG_DEBUG_HTTP ;
 int coroutines_key ;
 int luaL_unref (int *,int,scalar_t__) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_rawget (int *,int ) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_probe_thread_delete (TYPE_2__*,int ,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

void
ngx_http_lua_del_thread(ngx_http_request_t *r, lua_State *L,
    ngx_http_lua_ctx_t *ctx, ngx_http_lua_co_ctx_t *coctx)
{
    if (coctx->co_ref == LUA_NOREF) {
        return;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua deleting light thread");

    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          coroutines_key));
    lua_rawget(L, LUA_REGISTRYINDEX);

    ngx_http_lua_probe_thread_delete(r, coctx->co, ctx);

    luaL_unref(L, -1, coctx->co_ref);
    coctx->co_ref = LUA_NOREF;
    coctx->co_status = NGX_HTTP_LUA_CO_DEAD;

    lua_pop(L, 1);
}
