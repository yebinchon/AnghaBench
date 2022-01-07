
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_ngx_req_append_body ;
 int ngx_http_lua_ngx_req_body_finish ;
 int ngx_http_lua_ngx_req_discard_body ;
 int ngx_http_lua_ngx_req_get_body_data ;
 int ngx_http_lua_ngx_req_get_body_file ;
 int ngx_http_lua_ngx_req_init_body ;
 int ngx_http_lua_ngx_req_read_body ;
 int ngx_http_lua_ngx_req_set_body_data ;
 int ngx_http_lua_ngx_req_set_body_file ;

void
ngx_http_lua_inject_req_body_api(lua_State *L)
{
    lua_pushcfunction(L, ngx_http_lua_ngx_req_read_body);
    lua_setfield(L, -2, "read_body");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_discard_body);
    lua_setfield(L, -2, "discard_body");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_get_body_data);
    lua_setfield(L, -2, "get_body_data");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_get_body_file);
    lua_setfield(L, -2, "get_body_file");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_set_body_data);
    lua_setfield(L, -2, "set_body_data");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_set_body_file);
    lua_setfield(L, -2, "set_body_file");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_init_body);
    lua_setfield(L, -2, "init_body");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_append_body);
    lua_setfield(L, -2, "append_body");

    lua_pushcfunction(L, ngx_http_lua_ngx_req_body_finish);
    lua_setfield(L, -2, "finish_body");
}
