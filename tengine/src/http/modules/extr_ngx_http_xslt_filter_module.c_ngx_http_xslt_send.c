
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ data; int handler; } ;
typedef TYPE_3__ ngx_pool_cleanup_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_25__ {int last_modified; } ;
typedef TYPE_4__ ngx_http_xslt_filter_loc_conf_t ;
struct TYPE_26__ {int done; } ;
typedef TYPE_5__ ngx_http_xslt_filter_ctx_t ;
struct TYPE_23__ {TYPE_1__* content_length; scalar_t__ content_length_n; } ;
struct TYPE_27__ {scalar_t__ header_only; TYPE_2__ headers_out; struct TYPE_27__* main; int pool; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_28__ {int * next; TYPE_8__* buf; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_29__ {scalar_t__ pos; scalar_t__ last; } ;
typedef TYPE_8__ ngx_buf_t ;
struct TYPE_22__ {scalar_t__ hash; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_free (scalar_t__) ;
 int ngx_http_clear_etag (TYPE_6__*) ;
 int ngx_http_clear_last_modified (TYPE_6__*) ;
 scalar_t__ ngx_http_filter_finalize_request (TYPE_6__*,int *,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 scalar_t__ ngx_http_next_body_filter (TYPE_6__*,TYPE_7__*) ;
 scalar_t__ ngx_http_next_header_filter (TYPE_6__*) ;
 int ngx_http_weak_etag (TYPE_6__*) ;
 int ngx_http_xslt_cleanup ;
 int ngx_http_xslt_filter_module ;
 TYPE_3__* ngx_pool_cleanup_add (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_xslt_send(ngx_http_request_t *r, ngx_http_xslt_filter_ctx_t *ctx,
    ngx_buf_t *b)
{
    ngx_int_t rc;
    ngx_chain_t out;
    ngx_pool_cleanup_t *cln;
    ngx_http_xslt_filter_loc_conf_t *conf;

    ctx->done = 1;

    if (b == ((void*)0)) {
        return ngx_http_filter_finalize_request(r, &ngx_http_xslt_filter_module,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
    }

    cln = ngx_pool_cleanup_add(r->pool, 0);

    if (cln == ((void*)0)) {
        ngx_free(b->pos);
        return ngx_http_filter_finalize_request(r, &ngx_http_xslt_filter_module,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
    }

    if (r == r->main) {
        r->headers_out.content_length_n = b->last - b->pos;

        if (r->headers_out.content_length) {
            r->headers_out.content_length->hash = 0;
            r->headers_out.content_length = ((void*)0);
        }

        conf = ngx_http_get_module_loc_conf(r, ngx_http_xslt_filter_module);

        if (!conf->last_modified) {
            ngx_http_clear_last_modified(r);
            ngx_http_clear_etag(r);

        } else {
            ngx_http_weak_etag(r);
        }
    }

    rc = ngx_http_next_header_filter(r);

    if (rc == NGX_ERROR || rc > NGX_OK || r->header_only) {
        ngx_free(b->pos);
        return rc;
    }

    cln->handler = ngx_http_xslt_cleanup;
    cln->data = b->pos;

    out.buf = b;
    out.next = ((void*)0);

    return ngx_http_next_body_filter(r, &out);
}
