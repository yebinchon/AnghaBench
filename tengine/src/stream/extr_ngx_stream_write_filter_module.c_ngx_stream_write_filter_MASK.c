#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_19__ ;

/* Type definitions */
typedef  scalar_t__ off_t ;
typedef  int ngx_uint_t ;
struct TYPE_26__ {TYPE_6__* from_downstream; TYPE_6__* from_upstream; } ;
typedef  TYPE_3__ ngx_stream_write_filter_ctx_t ;
struct TYPE_27__ {TYPE_2__* upstream; TYPE_5__* connection; } ;
typedef  TYPE_4__ ngx_stream_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_28__ {int error; int buffered; int /*<<< orphan*/  log; scalar_t__ shared; int /*<<< orphan*/  pool; TYPE_6__* (* send_chain ) (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ ) ;scalar_t__ need_last_buf; } ;
typedef  TYPE_5__ ngx_connection_t ;
struct TYPE_29__ {struct TYPE_29__* next; TYPE_19__* buf; } ;
typedef  TYPE_6__ ngx_chain_t ;
struct TYPE_24__ {TYPE_5__* connection; } ;
struct TYPE_25__ {TYPE_1__ peer; } ;
struct TYPE_23__ {scalar_t__ last_buf; scalar_t__ sync; scalar_t__ recycled; scalar_t__ flush; scalar_t__ file_last; scalar_t__ file_pos; int /*<<< orphan*/  file; scalar_t__ last; scalar_t__ pos; int /*<<< orphan*/  start; int /*<<< orphan*/  in_file; int /*<<< orphan*/  temporary; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 TYPE_6__* NGX_CHAIN_ERROR ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 int NGX_LOWLEVEL_BUFFERED ; 
 int /*<<< orphan*/  NGX_OK ; 
 int NGX_STREAM_WRITE_BUFFERED ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_write_filter_module ; 
 TYPE_6__* FUNC12 (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC13(ngx_stream_session_t *s, ngx_chain_t *in,
    ngx_uint_t from_upstream)
{
    off_t                           size;
    ngx_uint_t                      last, flush, sync;
    ngx_chain_t                    *cl, *ln, **ll, **out, *chain;
    ngx_connection_t               *c;
    ngx_stream_write_filter_ctx_t  *ctx;

    ctx = FUNC10(s, ngx_stream_write_filter_module);

    if (ctx == NULL) {
        ctx = FUNC9(s->connection->pool,
                          sizeof(ngx_stream_write_filter_ctx_t));
        if (ctx == NULL) {
            return NGX_ERROR;
        }

        FUNC11(s, ctx, ngx_stream_write_filter_module);
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

    /* find the size, the flush point and the last link of the saved chain */

    for (cl = *out; cl; cl = cl->next) {
        ll = &cl->next;

        FUNC7(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "write old buf t:%d f:%d %p, pos %p, size: %z "
                       "file: %O, size: %O",
                       cl->buf->temporary, cl->buf->in_file,
                       cl->buf->start, cl->buf->pos,
                       cl->buf->last - cl->buf->pos,
                       cl->buf->file_pos,
                       cl->buf->file_last - cl->buf->file_pos);

        if (FUNC1(cl->buf) == 0 && !FUNC2(cl->buf)) {
            FUNC8(NGX_LOG_ALERT, c->log, 0,
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

            FUNC3();
            return NGX_ERROR;
        }

        if (FUNC1(cl->buf) < 0) {
            FUNC8(NGX_LOG_ALERT, c->log, 0,
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

            FUNC3();
            return NGX_ERROR;
        }

        size += FUNC1(cl->buf);

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

    /* add the new chain to the existent one */

    for (ln = in; ln; ln = ln->next) {
        cl = FUNC0(c->pool);
        if (cl == NULL) {
            return NGX_ERROR;
        }

        cl->buf = ln->buf;
        *ll = cl;
        ll = &cl->next;

        FUNC7(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "write new buf t:%d f:%d %p, pos %p, size: %z "
                       "file: %O, size: %O",
                       cl->buf->temporary, cl->buf->in_file,
                       cl->buf->start, cl->buf->pos,
                       cl->buf->last - cl->buf->pos,
                       cl->buf->file_pos,
                       cl->buf->file_last - cl->buf->file_pos);

        if (FUNC1(cl->buf) == 0 && !FUNC2(cl->buf)) {
            FUNC8(NGX_LOG_ALERT, c->log, 0,
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

            FUNC3();
            return NGX_ERROR;
        }

        if (FUNC1(cl->buf) < 0) {
            FUNC8(NGX_LOG_ALERT, c->log, 0,
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

            FUNC3();
            return NGX_ERROR;
        }

        size += FUNC1(cl->buf);

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

    *ll = NULL;

    FUNC6(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream write filter: l:%ui f:%ui s:%O", last, flush, size);

    if (size == 0
        && !(c->buffered & NGX_LOWLEVEL_BUFFERED)
        && !(last && c->need_last_buf))
    {
        if (last || flush || sync) {
            for (cl = *out; cl; /* void */) {
                ln = cl;
                cl = cl->next;
                FUNC4(c->pool, ln);
            }

            *out = NULL;
            c->buffered &= ~NGX_STREAM_WRITE_BUFFERED;

            return NGX_OK;
        }

        FUNC8(NGX_LOG_ALERT, c->log, 0,
                      "the stream output chain is empty");

        FUNC3();

        return NGX_ERROR;
    }

    chain = c->send_chain(c, *out, 0);

    FUNC5(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "stream write filter %p", chain);

    if (chain == NGX_CHAIN_ERROR) {
        c->error = 1;
        return NGX_ERROR;
    }

    for (cl = *out; cl && cl != chain; /* void */) {
        ln = cl;
        cl = cl->next;
        FUNC4(c->pool, ln);
    }

    *out = chain;

    if (chain) {
        if (c->shared) {
            FUNC8(NGX_LOG_ALERT, c->log, 0,
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