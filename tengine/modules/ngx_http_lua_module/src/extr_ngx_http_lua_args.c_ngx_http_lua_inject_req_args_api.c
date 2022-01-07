
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_ngx_req_get_post_args ;
 int ngx_http_lua_ngx_req_get_uri_args ;
 int ngx_http_lua_ngx_req_set_uri_args ;

void
ngx_http_lua_inject_req_args_api(lua_State *L)
{
    lua_pushcfunction(L, ngx_http_lua_ngx_req_set_uri_args);
    lua_setfield(L, -2, "set_uri_args");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_get_uri_args);
    lua_setfield(L, -2, "get_uri_args");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_get_uri_args);
    lua_setfield(L, -2, "get_query_args");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_get_post_args);
    lua_setfield(L, -2, "get_post_args");
}
