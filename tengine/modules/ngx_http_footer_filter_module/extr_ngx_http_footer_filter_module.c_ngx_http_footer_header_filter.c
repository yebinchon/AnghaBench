
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef int ngx_int_t ;
struct TYPE_23__ {scalar_t__ status; int content_length_n; TYPE_3__* content_length; TYPE_2__* content_encoding; } ;
struct TYPE_24__ {int method; TYPE_4__ headers_out; int pool; struct TYPE_24__* main; scalar_t__ header_only; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_25__ {int * variable; int types; } ;
typedef TYPE_6__ ngx_http_footer_loc_conf_t ;
struct TYPE_19__ {scalar_t__ len; } ;
struct TYPE_26__ {TYPE_17__ footer; } ;
typedef TYPE_7__ ngx_http_footer_ctx_t ;
typedef int ngx_http_complex_value_t ;
struct TYPE_22__ {scalar_t__ hash; } ;
struct TYPE_20__ {scalar_t__ len; } ;
struct TYPE_21__ {TYPE_1__ value; } ;


 int NGX_ERROR ;
 int NGX_HTTP_HEAD ;
 scalar_t__ NGX_HTTP_NO_CONTENT ;
 scalar_t__ NGX_OK ;
 int ngx_http_clear_accept_ranges (TYPE_5__*) ;
 scalar_t__ ngx_http_complex_value (TYPE_5__*,int *,TYPE_17__*) ;
 int ngx_http_footer_filter_module ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 int ngx_http_next_header_filter (TYPE_5__*) ;
 int ngx_http_set_ctx (TYPE_5__*,TYPE_7__*,int ) ;
 int * ngx_http_test_content_type (TYPE_5__*,int *) ;
 TYPE_7__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_footer_header_filter(ngx_http_request_t *r)
{
    ngx_http_footer_ctx_t *ctx;
    ngx_http_footer_loc_conf_t *lcf;

    lcf = ngx_http_get_module_loc_conf(r, ngx_http_footer_filter_module);

    if (lcf->variable == (ngx_http_complex_value_t *) -1
        || r->header_only
        || (r->method & NGX_HTTP_HEAD)
        || r != r->main
        || r->headers_out.status == NGX_HTTP_NO_CONTENT
        || (r->headers_out.content_encoding
            && r->headers_out.content_encoding->value.len)
        || ngx_http_test_content_type(r, &lcf->types) == ((void*)0))
    {
        return ngx_http_next_header_filter(r);
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_footer_ctx_t));
    if (ctx == ((void*)0)) {
       return NGX_ERROR;
    }

    if (ngx_http_complex_value(r, lcf->variable, &ctx->footer) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_http_set_ctx(r, ctx, ngx_http_footer_filter_module);

    if (r->headers_out.content_length_n != -1) {
        r->headers_out.content_length_n += ctx->footer.len;
    }

    if (r->headers_out.content_length) {
        r->headers_out.content_length->hash = 0;
        r->headers_out.content_length = ((void*)0);
    }

    ngx_http_clear_accept_ranges(r);

    return ngx_http_next_header_filter(r);
}
