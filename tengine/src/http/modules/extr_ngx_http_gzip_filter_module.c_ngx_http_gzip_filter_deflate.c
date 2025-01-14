
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_22__ {int pool; TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_19__ {scalar_t__ avail_in; scalar_t__ avail_out; int next_out; int * next_in; } ;
struct TYPE_23__ {scalar_t__ flush; int redo; TYPE_6__** last_out; TYPE_7__* out_buf; int * in; TYPE_18__ zstream; TYPE_1__* request; TYPE_8__* in_buf; } ;
typedef TYPE_4__ ngx_http_gzip_ctx_t ;
struct TYPE_24__ {scalar_t__ no_buffer; } ;
typedef TYPE_5__ ngx_http_gzip_conf_t ;
struct TYPE_25__ {struct TYPE_25__* next; TYPE_7__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_26__ {int flush; int last; } ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_27__ {int * pos; } ;
struct TYPE_21__ {int buffered; int log; } ;
struct TYPE_20__ {int pool; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_GZIP_BUFFERED ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int Z_BUF_ERROR ;
 scalar_t__ Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 scalar_t__ Z_SYNC_FLUSH ;
 int deflate (TYPE_18__*,scalar_t__) ;
 TYPE_6__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_buf_size (TYPE_7__*) ;
 TYPE_7__* ngx_calloc_buf (int ) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 scalar_t__ ngx_http_gzip_filter_deflate_end (TYPE_3__*,TYPE_4__*) ;
 int ngx_http_gzip_filter_module ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_8__*,int *) ;
 int ngx_log_debug5 (int ,int ,int ,char*,int *,int ,scalar_t__,scalar_t__,int) ;
 int ngx_log_debug6 (int ,int ,int ,char*,int *,int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_gzip_filter_deflate(ngx_http_request_t *r, ngx_http_gzip_ctx_t *ctx)
{
    int rc;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_gzip_conf_t *conf;

    ngx_log_debug6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                 "deflate in: ni:%p no:%p ai:%ud ao:%ud fl:%d redo:%d",
                 ctx->zstream.next_in, ctx->zstream.next_out,
                 ctx->zstream.avail_in, ctx->zstream.avail_out,
                 ctx->flush, ctx->redo);

    rc = deflate(&ctx->zstream, ctx->flush);

    if (rc != Z_OK && rc != Z_STREAM_END && rc != Z_BUF_ERROR) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "deflate() failed: %d, %d", ctx->flush, rc);
        return NGX_ERROR;
    }

    ngx_log_debug5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "deflate out: ni:%p no:%p ai:%ud ao:%ud rc:%d",
                   ctx->zstream.next_in, ctx->zstream.next_out,
                   ctx->zstream.avail_in, ctx->zstream.avail_out,
                   rc);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "gzip in_buf:%p pos:%p",
                   ctx->in_buf, ctx->in_buf->pos);

    if (ctx->zstream.next_in) {
        ctx->in_buf->pos = ctx->zstream.next_in;

        if (ctx->zstream.avail_in == 0) {
            ctx->zstream.next_in = ((void*)0);
        }
    }

    ctx->out_buf->last = ctx->zstream.next_out;

    if (ctx->zstream.avail_out == 0 && rc != Z_STREAM_END) {



        cl = ngx_alloc_chain_link(r->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        cl->buf = ctx->out_buf;
        cl->next = ((void*)0);
        *ctx->last_out = cl;
        ctx->last_out = &cl->next;

        ctx->redo = 1;

        return NGX_AGAIN;
    }

    ctx->redo = 0;

    if (ctx->flush == Z_SYNC_FLUSH) {

        ctx->flush = Z_NO_FLUSH;

        cl = ngx_alloc_chain_link(r->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        b = ctx->out_buf;

        if (ngx_buf_size(b) == 0) {

            b = ngx_calloc_buf(ctx->request->pool);
            if (b == ((void*)0)) {
                return NGX_ERROR;
            }

        } else {
            ctx->zstream.avail_out = 0;
        }

        b->flush = 1;

        cl->buf = b;
        cl->next = ((void*)0);
        *ctx->last_out = cl;
        ctx->last_out = &cl->next;

        r->connection->buffered &= ~NGX_HTTP_GZIP_BUFFERED;

        return NGX_OK;
    }

    if (rc == Z_STREAM_END) {

        if (ngx_http_gzip_filter_deflate_end(r, ctx) != NGX_OK) {
            return NGX_ERROR;
        }

        return NGX_OK;
    }

    conf = ngx_http_get_module_loc_conf(r, ngx_http_gzip_filter_module);

    if (conf->no_buffer && ctx->in == ((void*)0)) {

        cl = ngx_alloc_chain_link(r->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        cl->buf = ctx->out_buf;
        cl->next = ((void*)0);
        *ctx->last_out = cl;
        ctx->last_out = &cl->next;

        return NGX_OK;
    }

    return NGX_AGAIN;
}
