
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {scalar_t__ header_only; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_21__ {int before_body_sent; } ;
typedef TYPE_3__ ngx_http_addition_ctx_t ;
struct TYPE_24__ {scalar_t__ len; } ;
struct TYPE_22__ {TYPE_7__ after_body; TYPE_7__ before_body; } ;
typedef TYPE_4__ ngx_http_addition_conf_t ;
struct TYPE_23__ {TYPE_1__* buf; struct TYPE_23__* next; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_19__ {int last_in_chain; int sync; scalar_t__ last_buf; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LAST ;
 scalar_t__ NGX_OK ;
 int ngx_http_addition_filter_module ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 scalar_t__ ngx_http_next_body_filter (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ ngx_http_send_special (TYPE_2__*,int ) ;
 int ngx_http_set_ctx (TYPE_2__*,int *,int ) ;
 scalar_t__ ngx_http_subrequest (TYPE_2__*,TYPE_7__*,int *,TYPE_2__**,int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_addition_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t rc;
    ngx_uint_t last;
    ngx_chain_t *cl;
    ngx_http_request_t *sr;
    ngx_http_addition_ctx_t *ctx;
    ngx_http_addition_conf_t *conf;

    if (in == ((void*)0) || r->header_only) {
        return ngx_http_next_body_filter(r, in);
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_addition_filter_module);

    if (ctx == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    conf = ngx_http_get_module_loc_conf(r, ngx_http_addition_filter_module);

    if (!ctx->before_body_sent) {
        ctx->before_body_sent = 1;

        if (conf->before_body.len) {
            if (ngx_http_subrequest(r, &conf->before_body, ((void*)0), &sr, ((void*)0), 0)
                != NGX_OK)
            {
                return NGX_ERROR;
            }
        }
    }

    if (conf->after_body.len == 0) {
        ngx_http_set_ctx(r, ((void*)0), ngx_http_addition_filter_module);
        return ngx_http_next_body_filter(r, in);
    }

    last = 0;

    for (cl = in; cl; cl = cl->next) {
        if (cl->buf->last_buf) {
            cl->buf->last_buf = 0;
            cl->buf->last_in_chain = 1;
            cl->buf->sync = 1;
            last = 1;
        }
    }

    rc = ngx_http_next_body_filter(r, in);

    if (rc == NGX_ERROR || !last || conf->after_body.len == 0) {
        return rc;
    }

    if (ngx_http_subrequest(r, &conf->after_body, ((void*)0), &sr, ((void*)0), 0)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    ngx_http_set_ctx(r, ((void*)0), ngx_http_addition_filter_module);

    return ngx_http_send_special(r, NGX_HTTP_LAST);
}
