
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cleanup; } ;
typedef TYPE_1__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;


 int dd (char*) ;
 TYPE_1__* lua_touserdata (int *,int) ;
 int ngx_http_lua_socket_tcp_cleanup (TYPE_1__*) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_upstream_destroy(lua_State *L)
{
    ngx_http_lua_socket_tcp_upstream_t *u;

    dd("upstream destroy triggered by Lua GC");

    u = lua_touserdata(L, 1);
    if (u == ((void*)0)) {
        return 0;
    }

    if (u->cleanup) {
        ngx_http_lua_socket_tcp_cleanup(u);
    }

    return 0;
}
