
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int ngx_http_lua_main_conf_t ;
typedef int lua_State ;
typedef int buf ;


 int NGX_LOG_ERR ;
 int luaL_loadbuffer (int *,char const*,int,char*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pcall (int *,int ,int ,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setglobal (int *,char*) ;
 int lua_tostring (int *,int) ;
 int ngx_http_lua_create_headers_metatable (int *,int *) ;
 int ngx_http_lua_get_raw_phase_context ;
 int ngx_http_lua_inject_arg_api (int *) ;
 int ngx_http_lua_inject_config_api (int *) ;
 int ngx_http_lua_inject_control_api (int *,int *) ;
 int ngx_http_lua_inject_core_consts (int *) ;
 int ngx_http_lua_inject_coroutine_api (int *,int *) ;
 int ngx_http_lua_inject_http_consts (int *) ;
 int ngx_http_lua_inject_log_api (int *) ;
 int ngx_http_lua_inject_misc_api (int *) ;
 int ngx_http_lua_inject_output_api (int *) ;
 int ngx_http_lua_inject_phase_api (int *) ;
 int ngx_http_lua_inject_regex_api (int *) ;
 int ngx_http_lua_inject_req_api (int *,int *) ;
 int ngx_http_lua_inject_resp_header_api (int *) ;
 int ngx_http_lua_inject_shdict_api (int *,int *) ;
 int ngx_http_lua_inject_sleep_api (int *) ;
 int ngx_http_lua_inject_socket_tcp_api (int *,int *) ;
 int ngx_http_lua_inject_socket_udp_api (int *,int *) ;
 int ngx_http_lua_inject_string_api (int *) ;
 int ngx_http_lua_inject_subrequest_api (int *) ;
 int ngx_http_lua_inject_time_api (int *) ;
 int ngx_http_lua_inject_timer_api (int *) ;
 int ngx_http_lua_inject_uthread_api (int *,int *) ;
 int ngx_http_lua_inject_variable_api (int *) ;
 int ngx_http_lua_inject_worker_api (int *) ;
 int ngx_log_error (int ,int *,int ,char*,int,int ) ;

__attribute__((used)) static void
ngx_http_lua_inject_ngx_api(lua_State *L, ngx_http_lua_main_conf_t *lmcf,
    ngx_log_t *log)
{
    lua_createtable(L, 0 , 117 );

    lua_pushcfunction(L, ngx_http_lua_get_raw_phase_context);
    lua_setfield(L, -2, "_phase_ctx");

    ngx_http_lua_inject_arg_api(L);

    ngx_http_lua_inject_http_consts(L);
    ngx_http_lua_inject_core_consts(L);

    ngx_http_lua_inject_log_api(L);
    ngx_http_lua_inject_output_api(L);
    ngx_http_lua_inject_time_api(L);
    ngx_http_lua_inject_string_api(L);
    ngx_http_lua_inject_control_api(log, L);
    ngx_http_lua_inject_subrequest_api(L);
    ngx_http_lua_inject_sleep_api(L);
    ngx_http_lua_inject_phase_api(L);





    ngx_http_lua_inject_req_api(log, L);
    ngx_http_lua_inject_resp_header_api(L);
    ngx_http_lua_create_headers_metatable(log, L);
    ngx_http_lua_inject_variable_api(L);
    ngx_http_lua_inject_shdict_api(lmcf, L);
    ngx_http_lua_inject_socket_tcp_api(log, L);
    ngx_http_lua_inject_socket_udp_api(log, L);
    ngx_http_lua_inject_uthread_api(log, L);
    ngx_http_lua_inject_timer_api(L);
    ngx_http_lua_inject_config_api(L);
    ngx_http_lua_inject_worker_api(L);

    ngx_http_lua_inject_misc_api(L);

    lua_getglobal(L, "package");
    lua_getfield(L, -1, "loaded");
    lua_pushvalue(L, -3);
    lua_setfield(L, -2, "ngx");
    lua_pop(L, 2);

    lua_setglobal(L, "ngx");

    ngx_http_lua_inject_coroutine_api(log, L);
}
