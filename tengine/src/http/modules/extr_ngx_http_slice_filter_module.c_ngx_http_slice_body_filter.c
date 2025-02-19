
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_23__ {scalar_t__ size; } ;
typedef TYPE_3__ ngx_http_slice_loc_conf_t ;
struct TYPE_27__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_24__ {int last; scalar_t__ start; scalar_t__ end; TYPE_7__ range; scalar_t__ active; TYPE_5__* sr; } ;
typedef TYPE_4__ ngx_http_slice_ctx_t ;
struct TYPE_25__ {TYPE_2__* connection; int args; int uri; scalar_t__ buffered; int done; struct TYPE_25__* main; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_26__ {TYPE_1__* buf; struct TYPE_26__* next; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_22__ {int log; } ;
struct TYPE_21__ {int last_in_chain; int sync; scalar_t__ last_buf; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LAST ;
 int NGX_HTTP_SUBREQUEST_CLONE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 scalar_t__ ngx_http_next_body_filter (TYPE_5__*,TYPE_6__*) ;
 int ngx_http_send_special (TYPE_5__*,int ) ;
 int ngx_http_set_ctx (TYPE_5__*,TYPE_4__*,int ) ;
 int ngx_http_slice_filter_module ;
 scalar_t__ ngx_http_subrequest (TYPE_5__*,int *,int *,TYPE_5__**,int *,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_7__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ ngx_sprintf (scalar_t__,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_slice_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t rc;
    ngx_chain_t *cl;
    ngx_http_slice_ctx_t *ctx;
    ngx_http_slice_loc_conf_t *slcf;

    ctx = ngx_http_get_module_ctx(r, ngx_http_slice_filter_module);

    if (ctx == ((void*)0) || r != r->main) {
        return ngx_http_next_body_filter(r, in);
    }

    for (cl = in; cl; cl = cl->next) {
        if (cl->buf->last_buf) {
            cl->buf->last_buf = 0;
            cl->buf->last_in_chain = 1;
            cl->buf->sync = 1;
            ctx->last = 1;
        }
    }

    rc = ngx_http_next_body_filter(r, in);

    if (rc == NGX_ERROR || !ctx->last) {
        return rc;
    }

    if (ctx->sr && !ctx->sr->done) {
        return rc;
    }

    if (!ctx->active) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "missing slice response");
        return NGX_ERROR;
    }

    if (ctx->start >= ctx->end) {
        ngx_http_set_ctx(r, ((void*)0), ngx_http_slice_filter_module);
        ngx_http_send_special(r, NGX_HTTP_LAST);
        return rc;
    }

    if (r->buffered) {
        return rc;
    }

    if (ngx_http_subrequest(r, &r->uri, &r->args, &ctx->sr, ((void*)0),
                            NGX_HTTP_SUBREQUEST_CLONE)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    ngx_http_set_ctx(ctx->sr, ctx, ngx_http_slice_filter_module);

    slcf = ngx_http_get_module_loc_conf(r, ngx_http_slice_filter_module);

    ctx->range.len = ngx_sprintf(ctx->range.data, "bytes=%O-%O", ctx->start,
                                 ctx->start + (off_t) slcf->size - 1)
                     - ctx->range.data;

    ctx->active = 0;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http slice subrequest: \"%V\"", &ctx->range);

    return rc;
}
