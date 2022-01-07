
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_13__ {int u; } ;
typedef TYPE_4__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_11__ {int timedout; int log; TYPE_1__* write; } ;
struct TYPE_10__ {scalar_t__ timedout; } ;


 int NGX_HTTP_REQUEST_TIME_OUT ;
 int NGX_LOG_ERR ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_proxy_connect_finalize_request (TYPE_3__*,int ,int ) ;
 int ngx_http_proxy_connect_module ;
 int ngx_http_proxy_connect_tunnel (TYPE_3__*,int,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_proxy_connect_write_downstream(ngx_http_request_t *r)
{
    ngx_http_proxy_connect_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_connect_module);

    if (r->connection->write->timedout) {
        r->connection->timedout = 1;
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "proxy_connect: client write timed out");
        ngx_http_proxy_connect_finalize_request(r, ctx->u,
                                                NGX_HTTP_REQUEST_TIME_OUT);
        return;
    }

    ngx_http_proxy_connect_tunnel(r, 1, 1);
}
