
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_14__ {struct TYPE_14__* main; int pool; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {int done; TYPE_5__** last_out; TYPE_2__* request; TYPE_6__* out_buf; int zstream; } ;
typedef TYPE_4__ ngx_http_gunzip_ctx_t ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_17__ {int last_buf; int last_in_chain; int sync; } ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_13__ {int pool; } ;
struct TYPE_12__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int Z_OK ;
 int inflateEnd (int *) ;
 TYPE_5__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_buf_size (TYPE_6__*) ;
 TYPE_6__* ngx_calloc_buf (int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_gunzip_filter_inflate_end(ngx_http_request_t *r,
    ngx_http_gunzip_ctx_t *ctx)
{
    int rc;
    ngx_buf_t *b;
    ngx_chain_t *cl;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "gunzip inflate end");

    rc = inflateEnd(&ctx->zstream);

    if (rc != Z_OK) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "inflateEnd() failed: %d", rc);
        return NGX_ERROR;
    }

    b = ctx->out_buf;

    if (ngx_buf_size(b) == 0) {

        b = ngx_calloc_buf(ctx->request->pool);
        if (b == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    cl = ngx_alloc_chain_link(r->pool);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    cl->buf = b;
    cl->next = ((void*)0);
    *ctx->last_out = cl;
    ctx->last_out = &cl->next;

    b->last_buf = (r == r->main) ? 1 : 0;
    b->last_in_chain = 1;
    b->sync = 1;

    ctx->done = 1;

    return NGX_OK;
}
