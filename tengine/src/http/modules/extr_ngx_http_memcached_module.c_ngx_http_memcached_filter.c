
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int tag; } ;
struct TYPE_17__ {int pos; int * last; } ;
struct TYPE_14__ {scalar_t__ length; int keepalive; TYPE_1__ output; int free_bufs; TYPE_7__* out_bufs; TYPE_8__ buffer; } ;
typedef TYPE_5__ ngx_http_upstream_t ;
struct TYPE_15__ {scalar_t__ rest; TYPE_3__* request; } ;
typedef TYPE_6__ ngx_http_memcached_ctx_t ;
struct TYPE_16__ {TYPE_4__* buf; struct TYPE_16__* next; } ;
typedef TYPE_7__ ngx_chain_t ;
typedef TYPE_8__ ngx_buf_t ;
struct TYPE_13__ {int flush; int memory; int * last; int tag; int * pos; } ;
struct TYPE_12__ {TYPE_2__* connection; int pool; TYPE_5__* upstream; } ;
struct TYPE_11__ {int log; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_HTTP_MEMCACHED_END ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 TYPE_7__* ngx_chain_get_free_buf (int ,int *) ;
 scalar_t__ ngx_http_memcached_end ;
 int ngx_log_debug4 (int ,int ,int ,char*,scalar_t__,int *,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ ngx_strncmp (int *,scalar_t__,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_memcached_filter(void *data, ssize_t bytes)
{
    ngx_http_memcached_ctx_t *ctx = data;

    u_char *last;
    ngx_buf_t *b;
    ngx_chain_t *cl, **ll;
    ngx_http_upstream_t *u;

    u = ctx->request->upstream;
    b = &u->buffer;

    if (u->length == (ssize_t) ctx->rest) {

        if (ngx_strncmp(b->last,
                   ngx_http_memcached_end + NGX_HTTP_MEMCACHED_END - ctx->rest,
                   bytes)
            != 0)
        {
            ngx_log_error(NGX_LOG_ERR, ctx->request->connection->log, 0,
                          "memcached sent invalid trailer");

            u->length = 0;
            ctx->rest = 0;

            return NGX_OK;
        }

        u->length -= bytes;
        ctx->rest -= bytes;

        if (u->length == 0) {
            u->keepalive = 1;
        }

        return NGX_OK;
    }

    for (cl = u->out_bufs, ll = &u->out_bufs; cl; cl = cl->next) {
        ll = &cl->next;
    }

    cl = ngx_chain_get_free_buf(ctx->request->pool, &u->free_bufs);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    cl->buf->flush = 1;
    cl->buf->memory = 1;

    *ll = cl;

    last = b->last;
    cl->buf->pos = last;
    b->last += bytes;
    cl->buf->last = b->last;
    cl->buf->tag = u->output.tag;

    ngx_log_debug4(NGX_LOG_DEBUG_HTTP, ctx->request->connection->log, 0,
                   "memcached filter bytes:%z size:%z length:%O rest:%z",
                   bytes, b->last - b->pos, u->length, ctx->rest);

    if (bytes <= (ssize_t) (u->length - NGX_HTTP_MEMCACHED_END)) {
        u->length -= bytes;
        return NGX_OK;
    }

    last += (size_t) (u->length - NGX_HTTP_MEMCACHED_END);

    if (ngx_strncmp(last, ngx_http_memcached_end, b->last - last) != 0) {
        ngx_log_error(NGX_LOG_ERR, ctx->request->connection->log, 0,
                      "memcached sent invalid trailer");

        b->last = last;
        cl->buf->last = last;
        u->length = 0;
        ctx->rest = 0;

        return NGX_OK;
    }

    ctx->rest -= b->last - last;
    b->last = last;
    cl->buf->last = last;
    u->length = ctx->rest;

    if (u->length == 0) {
        u->keepalive = 1;
    }

    return NGX_OK;
}
