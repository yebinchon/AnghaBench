
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_10__ {int log_error; int log; } ;
struct TYPE_12__ {TYPE_3__* request; TYPE_2__ peer; } ;
typedef TYPE_4__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_13__ {TYPE_4__* u; } ;
typedef TYPE_5__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_9__ {int log; } ;


 int NGX_ERROR ;
 int NGX_ERROR_ERR ;
 int NGX_OK ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_connect_upstream_create(ngx_http_request_t *r,
    ngx_http_proxy_connect_ctx_t *ctx)
{
    ngx_http_proxy_connect_upstream_t *u;

    u = ngx_pcalloc(r->pool, sizeof(ngx_http_proxy_connect_upstream_t));
    if (u == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->u = u;

    u->peer.log = r->connection->log;
    u->peer.log_error = NGX_ERROR_ERR;

    u->request = r;

    return NGX_OK;
}
