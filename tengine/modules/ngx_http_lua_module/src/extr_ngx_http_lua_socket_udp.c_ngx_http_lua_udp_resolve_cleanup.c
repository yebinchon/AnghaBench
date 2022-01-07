
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_resolver_ctx_t ;
struct TYPE_5__ {TYPE_1__* resolved; } ;
typedef TYPE_2__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;
struct TYPE_4__ {int * ctx; } ;


 int ngx_resolve_name_done (int *) ;

__attribute__((used)) static void
ngx_http_lua_udp_resolve_cleanup(void *data)
{
    ngx_resolver_ctx_t *rctx;
    ngx_http_lua_socket_udp_upstream_t *u;
    ngx_http_lua_co_ctx_t *coctx = data;

    u = coctx->data;
    if (u == ((void*)0)) {
        return;
    }

    rctx = u->resolved->ctx;
    if (rctx == ((void*)0)) {
        return;
    }

    ngx_resolve_name_done(rctx);
}
