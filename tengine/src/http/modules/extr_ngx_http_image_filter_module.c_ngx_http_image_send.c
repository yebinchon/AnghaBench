
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {scalar_t__ header_only; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_8__ {scalar_t__ phase; } ;
typedef TYPE_2__ ngx_http_image_filter_ctx_t ;
typedef int ngx_chain_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_IMAGE_DONE ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_next_body_filter (TYPE_1__*,int *) ;
 scalar_t__ ngx_http_next_header_filter (TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_image_send(ngx_http_request_t *r, ngx_http_image_filter_ctx_t *ctx,
    ngx_chain_t *in)
{
    ngx_int_t rc;

    rc = ngx_http_next_header_filter(r);

    if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
        return NGX_ERROR;
    }

    rc = ngx_http_next_body_filter(r, in);

    if (ctx->phase == NGX_HTTP_IMAGE_DONE) {

        return (rc == NGX_OK) ? NGX_ERROR : rc;
    }

    return rc;
}
