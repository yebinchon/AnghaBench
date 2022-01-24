#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_15__ {struct TYPE_15__* main; int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_5__* body_filter_chain; } ;
typedef  TYPE_3__ ngx_http_lua_main_conf_t ;
struct TYPE_17__ {int seen_last_in_filter; int /*<<< orphan*/  free_bufs; } ;
typedef  TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {TYPE_6__* buf; struct TYPE_18__* next; } ;
typedef  TYPE_5__ ngx_chain_t ;
struct TYPE_19__ {int last_buf; int last_in_chain; scalar_t__ last; scalar_t__ pos; int sync; int flush; } ;
typedef  TYPE_6__ ngx_buf_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 TYPE_3__* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

int
FUNC14(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    int                      type;
    int                      idx;
    int                      found;
    u_char                  *data;
    size_t                   size;
    unsigned                 last;
    unsigned                 flush = 0;
    ngx_buf_t               *b;
    ngx_chain_t             *cl;
    ngx_chain_t             *in;

    ngx_http_lua_main_conf_t    *lmcf;

    idx = FUNC1(L, 2);

    FUNC0("index: %d", idx);

    if (idx != 1 && idx != 2) {
        return FUNC2(L, "bad index: %d", idx);
    }

    lmcf = FUNC10(r, ngx_http_lua_module);

    if (idx == 2) {
        /* overwriting the eof flag */
        last = FUNC3(L, 3);

        in = lmcf->body_filter_chain;

        if (last) {
            ctx->seen_last_in_filter = 1;

            /* the "in" chain cannot be NULL and we set the "last_buf" or
             * "last_in_chain" flag in the last buf of "in" */

            for (cl = in; cl; cl = cl->next) {
                if (cl->next == NULL) {
                    if (r == r->main) {
                        cl->buf->last_buf = 1;

                    } else {
                        cl->buf->last_in_chain = 1;
                    }

                    break;
                }
            }

        } else {
            /* last == 0 */

            found = 0;

            for (cl = in; cl; cl = cl->next) {
                b = cl->buf;

                if (b->last_buf) {
                    b->last_buf = 0;
                    found = 1;
                }

                if (b->last_in_chain) {
                    b->last_in_chain = 0;
                    found = 1;
                }

                if (found && b->last == b->pos && !FUNC7(b)) {
                    /* make it a special sync buf to make
                     * ngx_http_write_filter_module happy. */
                    b->sync = 1;
                }
            }

            ctx->seen_last_in_filter = 0;
        }

        return 0;
    }

    /* idx == 1, overwriting the chunk data */

    type = FUNC5(L, 3);

    switch (type) {
    case LUA_TSTRING:
    case LUA_TNUMBER:
        data = (u_char *) FUNC4(L, 3, &size);
        break;

    case LUA_TNIL:
        /* discard the buffers */

        in = lmcf->body_filter_chain;

        last = 0;

        for (cl = in; cl; cl = cl->next) {
            b = cl->buf;

            if (b->flush) {
                flush = 1;
            }

            if (b->last_in_chain || b->last_buf) {
                last = 1;
            }

            FUNC0("mark the buf as consumed: %d", (int) FUNC8(b));
            b->pos = b->last;
        }

        /* cl == NULL */

        goto done;

    case LUA_TTABLE:
        size = FUNC11(L, 3 /* index */, 3 /* arg */,
                                                 1 /* strict */);
        data = NULL;
        break;

    default:
        return FUNC2(L, "bad chunk data type: %s",
                          FUNC6(L, type));
    }

    in = lmcf->body_filter_chain;

    last = 0;

    for (cl = in; cl; cl = cl->next) {
        b = cl->buf;

        if (b->flush) {
            flush = 1;
        }

        if (b->last_buf || b->last_in_chain) {
            last = 1;
        }

        FUNC0("mark the buf as consumed: %d", (int) FUNC8(cl->buf));
        cl->buf->pos = cl->buf->last;
    }

    /* cl == NULL */

    if (size == 0) {
        goto done;
    }

    cl = FUNC12(r->connection->log, r->pool,
                                         &ctx->free_bufs, size);
    if (cl == NULL) {
        return FUNC2(L, "no memory");
    }

    if (type == LUA_TTABLE) {
        cl->buf->last = FUNC13(L, 3, cl->buf->last);

    } else {
        cl->buf->last = FUNC9(cl->buf->pos, data, size);
    }

done:

    if (last || flush) {
        if (cl == NULL) {
            cl = FUNC12(r->connection->log,
                                                 r->pool,
                                                 &ctx->free_bufs, 0);
            if (cl == NULL) {
                return FUNC2(L, "no memory");
            }
        }

        if (last) {
            ctx->seen_last_in_filter = 1;

            if (r == r->main) {
                cl->buf->last_buf = 1;

            } else {
                cl->buf->last_in_chain = 1;
            }
        }

        if (flush) {
            cl->buf->flush = 1;
        }
    }

    lmcf->body_filter_chain = cl;

    return 0;
}