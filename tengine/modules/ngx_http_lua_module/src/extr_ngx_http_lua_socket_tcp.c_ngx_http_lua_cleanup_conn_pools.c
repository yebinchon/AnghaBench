
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int key; } ;
typedef TYPE_1__ ngx_http_lua_socket_pool_t ;
typedef int lua_State ;
struct TYPE_7__ {int log; } ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_rawget (int *,int ) ;
 TYPE_1__* lua_touserdata (int *,int) ;
 TYPE_4__* ngx_cycle ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_socket_shutdown_pool_helper (TYPE_1__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_1__*,int ) ;
 int socket_pool_key ;

void
ngx_http_lua_cleanup_conn_pools(lua_State *L)
{
    ngx_http_lua_socket_pool_t *spool;

    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          socket_pool_key));
    lua_rawget(L, LUA_REGISTRYINDEX);

    lua_pushnil(L);
    while (lua_next(L, -2) != 0) {

        spool = lua_touserdata(L, -1);

        if (spool != ((void*)0)) {
            ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                           "lua tcp socket keepalive: free connection pool %p "
                           "for \"%s\"", spool, spool->key);

            ngx_http_lua_socket_shutdown_pool_helper(spool);
        }

        lua_pop(L, 1);
    }

    lua_pop(L, 1);
}
