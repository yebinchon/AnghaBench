
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
typedef int lua_State ;
typedef int buf ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_CRIT ;
 scalar_t__ NGX_OK ;
 int downstream_udata_metatable_key ;
 scalar_t__ luaL_loadbuffer (int *,char const*,int,char*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawset (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_socket_cleanup_compiled_pattern ;
 int ngx_http_lua_socket_downstream_destroy ;
 int ngx_http_lua_socket_shutdown_pool ;
 int ngx_http_lua_socket_tcp ;
 int ngx_http_lua_socket_tcp_close ;
 int ngx_http_lua_socket_tcp_connect ;
 int ngx_http_lua_socket_tcp_getreusedtimes ;
 int ngx_http_lua_socket_tcp_receive ;
 int ngx_http_lua_socket_tcp_receiveany ;
 int ngx_http_lua_socket_tcp_receiveuntil ;
 int ngx_http_lua_socket_tcp_send ;
 int ngx_http_lua_socket_tcp_setkeepalive ;
 int ngx_http_lua_socket_tcp_setoption ;
 int ngx_http_lua_socket_tcp_settimeout ;
 int ngx_http_lua_socket_tcp_settimeouts ;
 int ngx_http_lua_socket_tcp_sslhandshake ;
 int ngx_http_lua_socket_tcp_upstream_destroy ;
 int ngx_http_lua_ssl_free_session ;
 int ngx_log_error (int ,int *,int ,char*,scalar_t__) ;
 int pattern_udata_metatable_key ;
 int pool_udata_metatable_key ;
 int raw_req_socket_metatable_key ;
 int req_socket_metatable_key ;
 int ssl_session_metatable_key ;
 int tcp_socket_metatable_key ;
 int upstream_udata_metatable_key ;

void
ngx_http_lua_inject_socket_tcp_api(ngx_log_t *log, lua_State *L)
{
    ngx_int_t rc;

    lua_createtable(L, 0, 4 );

    lua_pushcfunction(L, ngx_http_lua_socket_tcp);
    lua_pushvalue(L, -1);
    lua_setfield(L, -3, "tcp");
    lua_setfield(L, -2, "stream");

    {
        const char buf[] = "local sock = ngx.socket.tcp()"
                            " local ok, err = sock:connect(...)"
                            " if ok then return sock else return nil, err end";

        rc = luaL_loadbuffer(L, buf, sizeof(buf) - 1, "=ngx.socket.connect");
    }

    if (rc != NGX_OK) {
        ngx_log_error(NGX_LOG_CRIT, log, 0,
                      "failed to load Lua code for ngx.socket.connect(): %i",
                      rc);

    } else {
        lua_setfield(L, -2, "connect");
    }

    lua_setfield(L, -2, "socket");


    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          req_socket_metatable_key));
    lua_createtable(L, 0 , 5 );

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_receive);
    lua_setfield(L, -2, "receive");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_receiveuntil);
    lua_setfield(L, -2, "receiveuntil");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_settimeout);
    lua_setfield(L, -2, "settimeout");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_settimeouts);
    lua_setfield(L, -2, "settimeouts");

    lua_pushvalue(L, -1);
    lua_setfield(L, -2, "__index");

    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          raw_req_socket_metatable_key));
    lua_createtable(L, 0 , 6 );

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_receive);
    lua_setfield(L, -2, "receive");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_receiveuntil);
    lua_setfield(L, -2, "receiveuntil");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_send);
    lua_setfield(L, -2, "send");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_settimeout);
    lua_setfield(L, -2, "settimeout");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_settimeouts);
    lua_setfield(L, -2, "settimeouts");

    lua_pushvalue(L, -1);
    lua_setfield(L, -2, "__index");

    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          tcp_socket_metatable_key));
    lua_createtable(L, 0 , 12 );

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_connect);
    lua_setfield(L, -2, "connect");
    lua_pushcfunction(L, ngx_http_lua_socket_tcp_receive);
    lua_setfield(L, -2, "receive");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_receiveany);
    lua_setfield(L, -2, "receiveany");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_receiveuntil);
    lua_setfield(L, -2, "receiveuntil");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_send);
    lua_setfield(L, -2, "send");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_close);
    lua_setfield(L, -2, "close");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_setoption);
    lua_setfield(L, -2, "setoption");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_settimeout);
    lua_setfield(L, -2, "settimeout");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_settimeouts);
    lua_setfield(L, -2, "settimeouts");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_getreusedtimes);
    lua_setfield(L, -2, "getreusedtimes");

    lua_pushcfunction(L, ngx_http_lua_socket_tcp_setkeepalive);
    lua_setfield(L, -2, "setkeepalive");

    lua_pushvalue(L, -1);
    lua_setfield(L, -2, "__index");
    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          upstream_udata_metatable_key));
    lua_createtable(L, 0 , 1 );
    lua_pushcfunction(L, ngx_http_lua_socket_tcp_upstream_destroy);
    lua_setfield(L, -2, "__gc");
    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          downstream_udata_metatable_key));
    lua_createtable(L, 0 , 1 );
    lua_pushcfunction(L, ngx_http_lua_socket_downstream_destroy);
    lua_setfield(L, -2, "__gc");
    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          pool_udata_metatable_key));
    lua_createtable(L, 0, 1);
    lua_pushcfunction(L, ngx_http_lua_socket_shutdown_pool);
    lua_setfield(L, -2, "__gc");
    lua_rawset(L, LUA_REGISTRYINDEX);



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          pattern_udata_metatable_key));
    lua_createtable(L, 0 , 1 );
    lua_pushcfunction(L, ngx_http_lua_socket_cleanup_compiled_pattern);
    lua_setfield(L, -2, "__gc");
    lua_rawset(L, LUA_REGISTRYINDEX);
}
