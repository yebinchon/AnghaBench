
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {int pool; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_19__ {TYPE_2__ footer; } ;
typedef TYPE_4__ ngx_http_footer_ctx_t ;
struct TYPE_20__ {TYPE_6__* buf; struct TYPE_20__* next; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_21__ {int last_buf; int memory; scalar_t__ last; scalar_t__ end; scalar_t__ pos; scalar_t__ start; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_16__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 TYPE_5__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_buf_size (TYPE_6__*) ;
 TYPE_6__* ngx_calloc_buf (int ) ;
 int ngx_http_footer_filter_module ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_next_body_filter (TYPE_3__*,TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_footer_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_buf_t *buf;
    ngx_uint_t last;
    ngx_chain_t *cl, *nl;
    ngx_http_footer_ctx_t *ctx;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http footer body filter");

    ctx = ngx_http_get_module_ctx(r, ngx_http_footer_filter_module);
    if (ctx == ((void*)0)) {
        return ngx_http_next_body_filter(r, in);
    }

    last = 0;

    for (cl = in; cl; cl = cl->next) {
         if (cl->buf->last_buf) {
             last = 1;
             break;
         }
    }

    if (!last) {
        return ngx_http_next_body_filter(r, in);
    }

    buf = ngx_calloc_buf(r->pool);
    if (buf == ((void*)0)) {
        return NGX_ERROR;
    }

    buf->pos = ctx->footer.data;
    buf->last = buf->pos + ctx->footer.len;
    buf->start = buf->pos;
    buf->end = buf->last;
    buf->last_buf = 1;
    buf->memory = 1;

    if (ngx_buf_size(cl->buf) == 0) {
        cl->buf = buf;
    } else {
        nl = ngx_alloc_chain_link(r->pool);
        if (nl == ((void*)0)) {
            return NGX_ERROR;
        }

        nl->buf = buf;
        nl->next = ((void*)0);
        cl->next = nl;
        cl->buf->last_buf = 0;
    }

    return ngx_http_next_body_filter(r, in);
}
