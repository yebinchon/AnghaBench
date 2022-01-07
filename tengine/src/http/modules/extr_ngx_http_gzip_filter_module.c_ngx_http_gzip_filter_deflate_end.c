
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {scalar_t__ avail_out; scalar_t__ avail_in; int total_out; int total_in; } ;
struct TYPE_14__ {int done; TYPE_10__ zstream; TYPE_4__** last_out; TYPE_5__* out_buf; int preallocated; int zout; int zin; } ;
typedef TYPE_3__ ngx_http_gzip_ctx_t ;
struct TYPE_15__ {struct TYPE_15__* next; TYPE_5__* buf; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_16__ {int last_buf; scalar_t__ temporary; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_12__ {int buffered; int log; } ;


 int NGX_ERROR ;
 int NGX_HTTP_GZIP_BUFFERED ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int Z_OK ;
 int deflateEnd (TYPE_10__*) ;
 TYPE_4__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_buf_size (TYPE_5__*) ;
 int ngx_log_error (int ,int ,int ,char*,int) ;
 int ngx_pfree (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_gzip_filter_deflate_end(ngx_http_request_t *r,
    ngx_http_gzip_ctx_t *ctx)
{
    int rc;
    ngx_buf_t *b;
    ngx_chain_t *cl;

    ctx->zin = ctx->zstream.total_in;
    ctx->zout = ctx->zstream.total_out;

    rc = deflateEnd(&ctx->zstream);

    if (rc != Z_OK) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "deflateEnd() failed: %d", rc);
        return NGX_ERROR;
    }

    ngx_pfree(r->pool, ctx->preallocated);

    cl = ngx_alloc_chain_link(r->pool);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    b = ctx->out_buf;

    if (ngx_buf_size(b) == 0) {
        b->temporary = 0;
    }

    b->last_buf = 1;

    cl->buf = b;
    cl->next = ((void*)0);
    *ctx->last_out = cl;
    ctx->last_out = &cl->next;

    ctx->zstream.avail_in = 0;
    ctx->zstream.avail_out = 0;

    ctx->done = 1;

    r->connection->buffered &= ~NGX_HTTP_GZIP_BUFFERED;

    return NGX_OK;
}
