
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_13__ {scalar_t__ nelts; } ;
struct TYPE_16__ {int types; TYPE_1__ sheets; } ;
typedef TYPE_4__ ngx_http_xslt_filter_loc_conf_t ;
typedef int ngx_http_xslt_filter_ctx_t ;
struct TYPE_15__ {scalar_t__ status; } ;
struct TYPE_17__ {int main_filter_need_in_memory; int pool; TYPE_3__ headers_out; TYPE_2__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_14__ {int log; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_HTTP_NOT_MODIFIED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int * ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 int ngx_http_next_header_filter (TYPE_5__*) ;
 int ngx_http_set_ctx (TYPE_5__*,int *,int ) ;
 int * ngx_http_test_content_type (TYPE_5__*,int *) ;
 int ngx_http_xslt_filter_module ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int * ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_xslt_header_filter(ngx_http_request_t *r)
{
    ngx_http_xslt_filter_ctx_t *ctx;
    ngx_http_xslt_filter_loc_conf_t *conf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "xslt filter header");

    if (r->headers_out.status == NGX_HTTP_NOT_MODIFIED) {
        return ngx_http_next_header_filter(r);
    }

    conf = ngx_http_get_module_loc_conf(r, ngx_http_xslt_filter_module);

    if (conf->sheets.nelts == 0
        || ngx_http_test_content_type(r, &conf->types) == ((void*)0))
    {
        return ngx_http_next_header_filter(r);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_xslt_filter_module);

    if (ctx) {
        return ngx_http_next_header_filter(r);
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_xslt_filter_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_http_set_ctx(r, ctx, ngx_http_xslt_filter_module);

    r->main_filter_need_in_memory = 1;

    return NGX_OK;
}
