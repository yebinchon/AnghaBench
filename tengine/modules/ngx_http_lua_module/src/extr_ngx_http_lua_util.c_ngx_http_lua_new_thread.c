
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;
struct TYPE_4__ {int log; } ;


 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NGX_LOG_DEBUG_HTTP ;
 int coroutines_key ;
 int luaL_ref (int *,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int * lua_newthread (int *) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_rawget (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int) ;
 int ngx_http_lua_create_new_globals_table (int *,int ,int ) ;
 int ngx_http_lua_get_globals_table (int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_set_globals_table (int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

lua_State *
ngx_http_lua_new_thread(ngx_http_request_t *r, lua_State *L, int *ref)
{
    int base;
    lua_State *co;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua creating new thread");

    base = lua_gettop(L);

    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          coroutines_key));
    lua_rawget(L, LUA_REGISTRYINDEX);

    co = lua_newthread(L);







    ngx_http_lua_create_new_globals_table(co, 0, 0);

    lua_createtable(co, 0, 1);
    ngx_http_lua_get_globals_table(co);
    lua_setfield(co, -2, "__index");
    lua_setmetatable(co, -2);

    ngx_http_lua_set_globals_table(co);



    *ref = luaL_ref(L, -2);

    if (*ref == LUA_NOREF) {
        lua_settop(L, base);
        return ((void*)0);
    }

    lua_settop(L, base);
    return co;
}
