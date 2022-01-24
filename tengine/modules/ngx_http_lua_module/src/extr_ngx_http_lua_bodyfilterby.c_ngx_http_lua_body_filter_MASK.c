#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_24__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_27__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  uri; TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_28__ {TYPE_7__* body_filter_chain; } ;
typedef  TYPE_3__ ngx_http_lua_main_conf_t ;
struct TYPE_29__ {scalar_t__ (* body_filter_handler ) (TYPE_2__*,TYPE_7__*) ;} ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_30__ {int /*<<< orphan*/  busy_bufs; int /*<<< orphan*/  free_bufs; int /*<<< orphan*/  context; int /*<<< orphan*/ * cleanup; scalar_t__ seen_last_in_filter; } ;
typedef  TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_31__ {int /*<<< orphan*/  handler; TYPE_5__* data; } ;
typedef  TYPE_6__ ngx_http_cleanup_t ;
struct TYPE_32__ {TYPE_24__* buf; struct TYPE_32__* next; } ;
typedef  TYPE_7__ ngx_chain_t ;
typedef  int /*<<< orphan*/  ngx_buf_tag_t ;
struct TYPE_26__ {int /*<<< orphan*/  file_last; int /*<<< orphan*/  file_pos; int /*<<< orphan*/  last; int /*<<< orphan*/  pos; } ;
struct TYPE_25__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CONTEXT_BODY_FILTER ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_6__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  ngx_http_lua_request_cleanup_handler ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_7__*) ; 

__attribute__((used)) static ngx_int_t
FUNC11(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_http_lua_loc_conf_t     *llcf;
    ngx_http_lua_ctx_t          *ctx;
    ngx_int_t                    rc;
    uint16_t                     old_context;
    ngx_http_cleanup_t          *cln;
    ngx_chain_t                 *out;
    ngx_http_lua_main_conf_t    *lmcf;

    FUNC9(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua body filter for user lua code, uri \"%V\"", &r->uri);

    if (in == NULL) {
        return FUNC8(r, in);
    }

    llcf = FUNC5(r, ngx_http_lua_module);

    if (llcf->body_filter_handler == NULL) {
        FUNC0("no body filter handler found");
        return FUNC8(r, in);
    }

    ctx = FUNC4(r, ngx_http_lua_module);

    FUNC0("ctx = %p", ctx);

    if (ctx == NULL) {
        ctx = FUNC7(r);
        if (ctx == NULL) {
            return NGX_ERROR;
        }
    }

    if (ctx->seen_last_in_filter) {
        for (/* void */; in; in = in->next) {
            FUNC0("mark the buf as consumed: %d", (int) FUNC1(in->buf));
            in->buf->pos = in->buf->last;
            in->buf->file_pos = in->buf->file_last;
        }

        return NGX_OK;
    }

    if (ctx->cleanup == NULL) {
        cln = FUNC3(r, 0);
        if (cln == NULL) {
            return NGX_ERROR;
        }

        cln->handler = ngx_http_lua_request_cleanup_handler;
        cln->data = ctx;
        ctx->cleanup = &cln->handler;
    }

    old_context = ctx->context;
    ctx->context = NGX_HTTP_LUA_CONTEXT_BODY_FILTER;

    FUNC0("calling body filter handler");
    rc = llcf->body_filter_handler(r, in);

    FUNC0("calling body filter handler returned %d", (int) rc);

    ctx->context = old_context;

    if (rc != NGX_OK) {
        return NGX_ERROR;
    }

    lmcf = FUNC6(r, ngx_http_lua_module);
    out = lmcf->body_filter_chain;

    if (in == out) {
        return FUNC8(r, in);
    }

    if (out == NULL) {
        /* do not forward NULL to the next filters because the input is
         * not NULL */
        return NGX_OK;
    }

    /* in != out */
    rc = FUNC8(r, out);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

#if nginx_version >= 1001004
    ngx_chain_update_chains(r->pool,
#else
    FUNC2(
#endif
                            ctx->free_bufs, ctx->busy_bufs, &out,
                            (ngx_buf_tag_t) &ngx_http_lua_module);

    return rc;
}