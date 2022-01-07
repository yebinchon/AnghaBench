
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int lua_State ;


 int lua_createtable (int *,int ,int) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_inject_req_args_api (int *) ;
 int ngx_http_lua_inject_req_body_api (int *) ;
 int ngx_http_lua_inject_req_header_api (int *) ;
 int ngx_http_lua_inject_req_method_api (int *) ;
 int ngx_http_lua_inject_req_misc_api (int *) ;
 int ngx_http_lua_inject_req_socket_api (int *) ;
 int ngx_http_lua_inject_req_time_api (int *) ;
 int ngx_http_lua_inject_req_uri_api (int *,int *) ;

void
ngx_http_lua_inject_req_api(ngx_log_t *log, lua_State *L)
{


    lua_createtable(L, 0 , 24 );

    ngx_http_lua_inject_req_header_api(L);
    ngx_http_lua_inject_req_uri_api(log, L);
    ngx_http_lua_inject_req_args_api(L);
    ngx_http_lua_inject_req_body_api(L);
    ngx_http_lua_inject_req_socket_api(L);
    ngx_http_lua_inject_req_method_api(L);
    ngx_http_lua_inject_req_time_api(L);
    ngx_http_lua_inject_req_misc_api(L);

    lua_setfield(L, -2, "req");
}
