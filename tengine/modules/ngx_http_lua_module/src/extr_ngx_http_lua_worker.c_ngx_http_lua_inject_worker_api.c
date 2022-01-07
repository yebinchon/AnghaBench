
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_ngx_worker_count ;
 int ngx_http_lua_ngx_worker_exiting ;
 int ngx_http_lua_ngx_worker_id ;
 int ngx_http_lua_ngx_worker_pid ;

void
ngx_http_lua_inject_worker_api(lua_State *L)
{
    lua_createtable(L, 0 , 4 );

    lua_pushcfunction(L, ngx_http_lua_ngx_worker_exiting);
    lua_setfield(L, -2, "exiting");

    lua_pushcfunction(L, ngx_http_lua_ngx_worker_pid);
    lua_setfield(L, -2, "pid");

    lua_pushcfunction(L, ngx_http_lua_ngx_worker_id);
    lua_setfield(L, -2, "id");

    lua_pushcfunction(L, ngx_http_lua_ngx_worker_count);
    lua_setfield(L, -2, "count");

    lua_setfield(L, -2, "worker");
}
