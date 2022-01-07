
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_19__ ;


typedef scalar_t__ off_t ;
typedef int ngx_uint_t ;
struct TYPE_26__ {TYPE_6__* from_downstream; TYPE_6__* from_upstream; } ;
typedef TYPE_3__ ngx_stream_write_filter_ctx_t ;
struct TYPE_27__ {TYPE_2__* upstream; TYPE_5__* connection; } ;
typedef TYPE_4__ ngx_stream_session_t ;
typedef int ngx_int_t ;
struct TYPE_28__ {int error; int buffered; int log; scalar_t__ shared; int pool; TYPE_6__* (* send_chain ) (TYPE_5__*,TYPE_6__*,int ) ;scalar_t__ need_last_buf; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_29__ {struct TYPE_29__* next; TYPE_19__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
struct TYPE_24__ {TYPE_5__* connection; } ;
struct TYPE_25__ {TYPE_1__ peer; } ;
struct TYPE_23__ {scalar_t__ last_buf; scalar_t__ sync; scalar_t__ recycled; scalar_t__ flush; scalar_t__ file_last; scalar_t__ file_pos; int file; scalar_t__ last; scalar_t__ pos; int start; int in_file; int temporary; } ;


 int NGX_AGAIN ;
 TYPE_6__* NGX_CHAIN_ERROR ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_DEBUG_STREAM ;
 int NGX_LOWLEVEL_BUFFERED ;
 int NGX_OK ;
 int NGX_STREAM_WRITE_BUFFERED ;
 TYPE_6__* ngx_alloc_chain_link (int ) ;
 scalar_t__ ngx_buf_size (TYPE_19__*) ;
 int ngx_buf_special (TYPE_19__*) ;
 int ngx_debug_point () ;
 int ngx_free_chain (int ,TYPE_6__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_6__*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int,scalar_t__) ;
 int ngx_log_debug7 (int ,int ,int ,char*,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 TYPE_3__* ngx_pcalloc (int ,int) ;
 TYPE_3__* ngx_stream_get_module_ctx (TYPE_4__*,int ) ;
 int ngx_stream_set_ctx (TYPE_4__*,TYPE_3__*,int ) ;
 int ngx_stream_write_filter_module ;
 TYPE_6__* stub1 (TYPE_5__*,TYPE_6__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_stream_write_filter(ngx_stream_session_t *s, ngx_chain_t *in,
    ngx_uint_t from_upstream)
{
    off_t size;
    ngx_uint_t last, flush, sync;
    ngx_chain_t *cl, *ln, **ll, **out, *chain;
    ngx_connection_t *c;
    ngx_stream_write_filter_ctx_t *ctx;

    ctx = ngx_stream_get_module_ctx(s, ngx_stream_write_filter_module);

    if (ctx == ((void*)0)) {
        ctx = ngx_pcalloc(s->connection->pool,
                          sizeof(ngx_stream_write_filter_ctx_t));
        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_stream_set_ctx(s, ctx, ngx_stream_write_filter_module);
    }

    if (from_upstream) {
        c = s->connection;
        out = &ctx->from_upstream;

    } else {
        c = s->upstream->peer.connection;
        out = &ctx->from_downstream;
    }

    if (c->error) {
        return NGX_ERROR;
    }

    size = 0;
    flush = 0;
    sync = 0;
    last = 0;
    ll = out;



    for (cl = *out; cl; cl = cl->next) {
        ll = &cl->next;

        ngx_log_debug7(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "write old buf t:%d f:%d %p, pos %p, size: %z "
                       "file: %O, size: %O",
                       cl->buf->temporary, cl->buf->in_file,
                       cl->buf->start, cl->buf->pos,
                       cl->buf->last - cl->buf->pos,
                       cl->buf->file_pos,
                       cl->buf->file_last - cl->buf->file_pos);

        if (ngx_buf_size(cl->buf) == 0 && !ngx_buf_special(cl->buf)) {
            ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                          "zero size buf in writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            ngx_debug_point();
            return NGX_ERROR;
        }

        if (ngx_buf_size(cl->buf) < 0) {
            ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                          "negative size buf in writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            ngx_debug_point();
            return NGX_ERROR;
        }

        size += ngx_buf_size(cl->buf);

        if (cl->buf->flush || cl->buf->recycled) {
            flush = 1;
        }

        if (cl->buf->sync) {
            sync = 1;
        }

        if (cl->buf->last_buf) {
            last = 1;
        }
    }



    for (ln = in; ln; ln = ln->next) {
        cl = ngx_alloc_chain_link(c->pool);
        if (cl == ((void*)0)) {
            return NGX_ERROR;
        }

        cl->buf = ln->buf;
        *ll = cl;
        ll = &cl->next;

        ngx_log_debug7(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "write new buf t:%d f:%d %p, pos %p, size: %z "
                       "file: %O, size: %O",
                       cl->buf->temporary, cl->buf->in_file,
                       cl->buf->start, cl->buf->pos,
                       cl->buf->last - cl->buf->pos,
                       cl->buf->file_pos,
                       cl->buf->file_last - cl->buf->file_pos);

        if (ngx_buf_size(cl->buf) == 0 && !ngx_buf_special(cl->buf)) {
            ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                          "zero size buf in writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            ngx_debug_point();
            return NGX_ERROR;
        }

        if (ngx_buf_size(cl->buf) < 0) {
            ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                          "negative size buf in writer "
                          "t:%d r:%d f:%d %p %p-%p %p %O-%O",
                          cl->buf->temporary,
                          cl->buf->recycled,
                          cl->buf->in_file,
                          cl->buf->start,
                          cl->buf->pos,
                          cl->buf->last,
                          cl->buf->file,
                          cl->buf->file_pos,
                          cl->buf->file_last);

            ngx_debug_point();
            return NGX_ERROR;
        }

        size += ngx_buf_size(cl->buf);

        if (cl->buf->flush || cl->buf->recycled) {
            flush = 1;
        }

        if (cl->buf->sync) {
            sync = 1;
        }

        if (cl->buf->last_buf) {
            last = 1;
        }
    }

    *ll = ((void*)0);

    ngx_log_debug3(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream write filter: l:%ui f:%ui s:%O", last, flush, size);

    if (size == 0
        && !(c->buffered & NGX_LOWLEVEL_BUFFERED)
        && !(last && c->need_last_buf))
    {
        if (last || flush || sync) {
            for (cl = *out; cl; ) {
                ln = cl;
                cl = cl->next;
                ngx_free_chain(c->pool, ln);
            }

            *out = ((void*)0);
            c->buffered &= ~NGX_STREAM_WRITE_BUFFERED;

            return NGX_OK;
        }

        ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                      "the stream output chain is empty");

        ngx_debug_point();

        return NGX_ERROR;
    }

    chain = c->send_chain(c, *out, 0);

    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream write filter %p", chain);

    if (chain == NGX_CHAIN_ERROR) {
        c->error = 1;
        return NGX_ERROR;
    }

    for (cl = *out; cl && cl != chain; ) {
        ln = cl;
        cl = cl->next;
        ngx_free_chain(c->pool, ln);
    }

    *out = chain;

    if (chain) {
        if (c->shared) {
            ngx_log_error(NGX_LOG_ALERT, c->log, 0,
                          "shared connection is busy");
            return NGX_ERROR;
        }

        c->buffered |= NGX_STREAM_WRITE_BUFFERED;
        return NGX_AGAIN;
    }

    c->buffered &= ~NGX_STREAM_WRITE_BUFFERED;

    if (c->buffered & NGX_LOWLEVEL_BUFFERED) {
        return NGX_AGAIN;
    }

    return NGX_OK;
}
