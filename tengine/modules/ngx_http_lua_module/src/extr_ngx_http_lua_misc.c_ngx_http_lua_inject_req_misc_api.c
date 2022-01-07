
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_ngx_req_is_internal ;

void
ngx_http_lua_inject_req_misc_api(lua_State *L)
{
    lua_pushcfunction(L, ngx_http_lua_ngx_req_is_internal);
    lua_setfield(L, -2, "is_internal");
}
