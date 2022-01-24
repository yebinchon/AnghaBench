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
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_28__ {int /*<<< orphan*/  read_event_handler; TYPE_2__* connection; int /*<<< orphan*/  stream; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_29__ {scalar_t__ check_client_abort; } ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_26__ {int co_ref; int co_top; int /*<<< orphan*/ * co; } ;
struct TYPE_30__ {int entered_content_phase; int /*<<< orphan*/  context; int /*<<< orphan*/ * cleanup; TYPE_1__* cur_co_ctx; TYPE_1__ entry_co_ctx; } ;
typedef  TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_31__ {int /*<<< orphan*/  handler; TYPE_5__* data; } ;
typedef  TYPE_6__ ngx_http_cleanup_t ;
struct TYPE_32__ {int /*<<< orphan*/  active; } ;
typedef  TYPE_7__ ngx_event_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_27__ {TYPE_7__* read; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_block_reading ; 
 TYPE_6__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_5__*,int) ; 
 TYPE_5__* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ngx_http_lua_rd_check_broken_connection ; 
 int /*<<< orphan*/  ngx_http_lua_request_cleanup_handler ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

ngx_int_t
FUNC15(lua_State *L, ngx_http_request_t *r)
{
    int                      co_ref;
    ngx_int_t                rc;
    lua_State               *co;
    ngx_event_t             *rev;
    ngx_http_lua_ctx_t      *ctx;
    ngx_http_cleanup_t      *cln;

    ngx_http_lua_loc_conf_t      *llcf;

    FUNC0("content by chunk");

    ctx = FUNC5(r, ngx_http_lua_module);

    if (ctx == NULL) {
        ctx = FUNC8(r);
        if (ctx == NULL) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

    } else {
        FUNC0("reset ctx");
        FUNC11(r, L, ctx);
    }

    ctx->entered_content_phase = 1;

    /*  {{{ new coroutine to handle request */
    co = FUNC10(r, L, &co_ref);

    if (co == NULL) {
        FUNC14(NGX_LOG_ERR, r->connection->log, 0,
                      "lua: failed to create new coroutine to handle request");

        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    /*  move code closure to new coroutine */
    FUNC2(L, co, 1);

#ifndef OPENRESTY_LUAJIT
    /*  set closure's env table to new coroutine's globals table */
    FUNC9(co);
    FUNC1(co, -2);
#endif

    /*  save nginx request in coroutine globals table */
    FUNC13(co, r);

    ctx->cur_co_ctx = &ctx->entry_co_ctx;
    ctx->cur_co_ctx->co = co;
    ctx->cur_co_ctx->co_ref = co_ref;
#ifdef NGX_LUA_USE_ASSERT
    ctx->cur_co_ctx->co_top = 1;
#endif

    /*  {{{ register request cleanup hooks */
    if (ctx->cleanup == NULL) {
        cln = FUNC4(r, 0);
        if (cln == NULL) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        cln->handler = ngx_http_lua_request_cleanup_handler;
        cln->data = ctx;
        ctx->cleanup = &cln->handler;
    }
    /*  }}} */

    ctx->context = NGX_HTTP_LUA_CONTEXT_CONTENT;

    llcf = FUNC6(r, ngx_http_lua_module);

    if (llcf->check_client_abort) {
        r->read_event_handler = ngx_http_lua_rd_check_broken_connection;

#if (NGX_HTTP_V2)
        if (!r->stream) {
#endif

        rev = r->connection->read;

        if (!rev->active) {
            if (FUNC3(rev, NGX_READ_EVENT, 0) != NGX_OK) {
                return NGX_ERROR;
            }
        }

#if (NGX_HTTP_V2)
        }
#endif

    } else {
        r->read_event_handler = ngx_http_block_reading;
    }

    rc = FUNC12(L, r, ctx, 0);

    if (rc == NGX_ERROR || rc >= NGX_OK) {
        return rc;
    }

    if (rc == NGX_AGAIN) {
        return FUNC7(L, r, ctx, 0);
    }

    if (rc == NGX_DONE) {
        return FUNC7(L, r, ctx, 1);
    }

    return NGX_OK;
}