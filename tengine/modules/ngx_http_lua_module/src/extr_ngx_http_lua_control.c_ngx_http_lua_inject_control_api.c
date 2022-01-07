
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_ngx_exec ;
 int ngx_http_lua_ngx_exit ;
 int ngx_http_lua_ngx_redirect ;
 int ngx_http_lua_on_abort ;

void
ngx_http_lua_inject_control_api(ngx_log_t *log, lua_State *L)
{


    lua_pushcfunction(L, ngx_http_lua_ngx_redirect);
    lua_setfield(L, -2, "redirect");



    lua_pushcfunction(L, ngx_http_lua_ngx_exec);
    lua_setfield(L, -2, "exec");

    lua_pushcfunction(L, ngx_http_lua_ngx_exit);
    lua_setfield(L, -2, "throw_error");



    lua_pushcfunction(L, ngx_http_lua_ngx_exit);
    lua_setfield(L, -2, "exit");



    lua_pushcfunction(L, ngx_http_lua_on_abort);
    lua_setfield(L, -2, "on_abort");
}
