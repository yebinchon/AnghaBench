
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {TYPE_2__* content_length; scalar_t__ content_length_n; } ;
struct TYPE_13__ {TYPE_3__ headers_out; scalar_t__ header_only; TYPE_1__* connection; scalar_t__ header_sent; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_14__ {int header_sent; TYPE_6__* out; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_15__ {int buf; struct TYPE_15__* next; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_11__ {scalar_t__ hash; } ;
struct TYPE_10__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 scalar_t__ ngx_buf_size (int ) ;
 int ngx_http_send_header (TYPE_4__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_send_http10_headers(ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    off_t size;
    ngx_chain_t *cl;
    ngx_int_t rc;

    if (r->header_sent || ctx->header_sent) {
        return NGX_OK;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua sending HTTP 1.0 response headers");

    if (r->header_only) {
        goto send;
    }

    if (r->headers_out.content_length == ((void*)0)) {
        for (size = 0, cl = ctx->out; cl; cl = cl->next) {
            size += ngx_buf_size(cl->buf);
        }

        r->headers_out.content_length_n = size;

        if (r->headers_out.content_length) {
            r->headers_out.content_length->hash = 0;
        }
    }

send:

    rc = ngx_http_send_header(r);
    ctx->header_sent = 1;
    return rc;
}
