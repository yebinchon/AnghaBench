
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int version; } ;
typedef TYPE_2__ ngx_http_tfs_restful_ctx_t ;
struct TYPE_14__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_BAD_REQUEST ;
 int NGX_LOG_ERR ;
 scalar_t__ ngx_http_restful_parse_action (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ ngx_http_restful_parse_action_raw (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ ngx_http_restful_parse_uri (TYPE_3__*,TYPE_2__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_http_restful_parse(ngx_http_request_t *r, ngx_http_tfs_restful_ctx_t *ctx)
{
    ngx_int_t rc;

    rc = ngx_http_restful_parse_uri(r, ctx);
    if (rc == NGX_ERROR) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0, "parse uri failed");
        return NGX_HTTP_BAD_REQUEST;
    }

    if (ctx->version == 1) {
        rc = ngx_http_restful_parse_action_raw(r, ctx);
    }

    if (ctx->version == 2) {
        rc = ngx_http_restful_parse_action(r, ctx);
    }

    return rc;
}
