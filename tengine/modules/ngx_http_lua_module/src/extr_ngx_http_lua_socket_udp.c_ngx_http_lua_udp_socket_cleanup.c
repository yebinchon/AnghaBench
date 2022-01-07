
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * request; } ;
typedef TYPE_1__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
typedef TYPE_2__ ngx_http_lua_co_ctx_t ;


 int ngx_http_lua_socket_udp_finalize (int *,TYPE_1__*) ;

__attribute__((used)) static void
ngx_http_lua_udp_socket_cleanup(void *data)
{
    ngx_http_lua_socket_udp_upstream_t *u;
    ngx_http_lua_co_ctx_t *coctx = data;

    u = coctx->data;
    if (u == ((void*)0)) {
        return;
    }

    if (u->request == ((void*)0)) {
        return;
    }

    ngx_http_lua_socket_udp_finalize(u->request, u);
}
