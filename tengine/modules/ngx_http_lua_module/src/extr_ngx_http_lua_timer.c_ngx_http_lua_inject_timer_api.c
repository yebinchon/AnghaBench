
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_ngx_timer_at ;
 int ngx_http_lua_ngx_timer_every ;
 int ngx_http_lua_ngx_timer_pending_count ;
 int ngx_http_lua_ngx_timer_running_count ;

void
ngx_http_lua_inject_timer_api(lua_State *L)
{
    lua_createtable(L, 0 , 4 );

    lua_pushcfunction(L, ngx_http_lua_ngx_timer_at);
    lua_setfield(L, -2, "at");

    lua_pushcfunction(L, ngx_http_lua_ngx_timer_every);
    lua_setfield(L, -2, "every");

    lua_pushcfunction(L, ngx_http_lua_ngx_timer_running_count);
    lua_setfield(L, -2, "running_count");

    lua_pushcfunction(L, ngx_http_lua_ngx_timer_pending_count);
    lua_setfield(L, -2, "pending_count");

    lua_setfield(L, -2, "timer");
}
