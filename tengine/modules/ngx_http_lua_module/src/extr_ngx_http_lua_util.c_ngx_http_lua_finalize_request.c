
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {scalar_t__ cur_co_ctx; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_9__ {scalar_t__ fd; } ;


 int ngx_http_finalize_request (TYPE_2__*,int ) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_cleanup_pending_operation (scalar_t__) ;
 int ngx_http_lua_finalize_fake_request (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;

void
ngx_http_lua_finalize_request(ngx_http_request_t *r, ngx_int_t rc)
{
    ngx_http_lua_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx && ctx->cur_co_ctx) {
        ngx_http_lua_cleanup_pending_operation(ctx->cur_co_ctx);
    }

    if (r->connection->fd != (ngx_socket_t) -1) {
        ngx_http_finalize_request(r, rc);
        return;
    }

    ngx_http_lua_finalize_fake_request(r, rc);
}
