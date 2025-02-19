
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {scalar_t__ status; } ;
struct TYPE_12__ {TYPE_1__ headers_out; scalar_t__ header_sent; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_13__ {int header_sent; int buffering; int headers_set; int mime_set; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_OK ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 int ngx_http_clear_accept_ranges (TYPE_2__*) ;
 int ngx_http_clear_content_length (TYPE_2__*) ;
 scalar_t__ ngx_http_lua_set_content_type (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ ngx_http_send_header (TYPE_2__*) ;

ngx_int_t
ngx_http_lua_send_header_if_needed(ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_int_t rc;

    dd("send header if needed: %d", r->header_sent || ctx->header_sent);

    if (!r->header_sent && !ctx->header_sent) {
        if (r->headers_out.status == 0) {
            r->headers_out.status = NGX_HTTP_OK;
        }

        if (!ctx->mime_set
            && ngx_http_lua_set_content_type(r, ctx) != NGX_OK)
        {
            return NGX_ERROR;
        }

        if (!ctx->headers_set) {
            ngx_http_clear_content_length(r);
            ngx_http_clear_accept_ranges(r);
        }

        if (!ctx->buffering) {
            dd("sending headers");
            rc = ngx_http_send_header(r);
            ctx->header_sent = 1;
            return rc;
        }
    }

    return NGX_OK;
}
