
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ pos; scalar_t__ last; } ;
struct TYPE_14__ {TYPE_2__ buf; int u; } ;
typedef TYPE_4__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_15__ {int timedout; int log; TYPE_1__* write; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_11__ {scalar_t__ timedout; } ;


 int NGX_HTTP_REQUEST_TIME_OUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_proxy_connect_finalize_request (TYPE_3__*,int ,int ) ;
 int ngx_http_proxy_connect_module ;
 int ngx_http_proxy_connect_send_connection_established (TYPE_3__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_proxy_connect_send_handler(ngx_http_request_t *r)
{
    ngx_connection_t *c;
    ngx_http_proxy_connect_ctx_t *ctx;

    c = r->connection;
    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_connect_module);

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "proxy_connect: send connection established handler");

    if (c->write->timedout) {
        c->timedout = 1;
        ngx_log_error(NGX_LOG_ERR, c->log, 0,
                      "proxy_connect: client write timed out");
        ngx_http_proxy_connect_finalize_request(r, ctx->u,
                                                NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    if (ctx->buf.pos != ctx->buf.last) {
        ngx_http_proxy_connect_send_connection_established(r);
    }
}
