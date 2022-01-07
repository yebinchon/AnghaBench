
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int peer; } ;
typedef TYPE_1__ ngx_http_upstream_t ;
struct TYPE_11__ {TYPE_1__* upstream; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_12__ {int * connection; } ;
typedef TYPE_3__ ngx_http_grpc_ctx_t ;


 scalar_t__ NGX_OK ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 scalar_t__ ngx_http_grpc_get_connection_data (TYPE_2__*,TYPE_3__*,int *) ;
 int ngx_http_grpc_module ;

__attribute__((used)) static ngx_http_grpc_ctx_t *
ngx_http_grpc_get_ctx(ngx_http_request_t *r)
{
    ngx_http_grpc_ctx_t *ctx;
    ngx_http_upstream_t *u;

    ctx = ngx_http_get_module_ctx(r, ngx_http_grpc_module);

    if (ctx->connection == ((void*)0)) {
        u = r->upstream;

        if (ngx_http_grpc_get_connection_data(r, ctx, &u->peer) != NGX_OK) {
            return ((void*)0);
        }
    }

    return ctx;
}
