#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_14__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_32__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * connection; scalar_t__ cached; scalar_t__ socklen; int /*<<< orphan*/ * sockaddr; int /*<<< orphan*/  tries; int /*<<< orphan*/  log; } ;
typedef  TYPE_5__ ngx_peer_connection_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_33__ {TYPE_4__* upstream; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_28__ {scalar_t__ (* handler ) (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_34__ {TYPE_1__ balancer; } ;
typedef  TYPE_7__ ngx_http_lua_srv_conf_t ;
struct TYPE_35__ {TYPE_10__* balancer_peer_data; } ;
typedef  TYPE_8__ ngx_http_lua_main_conf_t ;
struct TYPE_36__ {scalar_t__ exit_code; scalar_t__ exited; int /*<<< orphan*/  context; } ;
typedef  TYPE_9__ ngx_http_lua_ctx_t ;
struct TYPE_27__ {TYPE_2__* peers; } ;
struct TYPE_26__ {TYPE_14__ rrp; scalar_t__ more_tries; int /*<<< orphan*/  host; scalar_t__ socklen; int /*<<< orphan*/ * sockaddr; int /*<<< orphan*/  total_tries; TYPE_6__* request; TYPE_7__* conf; } ;
typedef  TYPE_10__ ngx_http_lua_balancer_peer_data_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_30__ {scalar_t__ tries; } ;
struct TYPE_31__ {TYPE_3__ peer; } ;
struct TYPE_29__ {scalar_t__ single; } ;

/* Variables and functions */
 scalar_t__ NGX_BUSY ; 
 scalar_t__ NGX_DECLINED ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CONTEXT_BALANCER ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_9__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_9__* FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_6__*,TYPE_9__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_9__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_6__*,TYPE_7__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_peer_connection_t *pc, void *data)
{
    lua_State                          *L;
    ngx_int_t                           rc;
    ngx_http_request_t                 *r;
    ngx_http_lua_ctx_t                 *ctx;
    ngx_http_lua_srv_conf_t            *lscf;
    ngx_http_lua_main_conf_t           *lmcf;
    ngx_http_lua_balancer_peer_data_t  *bp = data;

    FUNC8(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "lua balancer peer, tries: %ui", pc->tries);

    lscf = bp->conf;

    r = bp->request;

    FUNC3(lscf->balancer.handler && r);

    ctx = FUNC1(r, ngx_http_lua_module);

    if (ctx == NULL) {
        ctx = FUNC4(r);
        if (ctx == NULL) {
            return NGX_ERROR;
        }

        L = FUNC5(r, ctx);

    } else {
        L = FUNC5(r, ctx);

        FUNC0("reset ctx");
        FUNC6(r, L, ctx);
    }

    ctx->context = NGX_HTTP_LUA_CONTEXT_BALANCER;

    bp->sockaddr = NULL;
    bp->socklen = 0;
    bp->more_tries = 0;
    bp->total_tries++;

    lmcf = FUNC2(r, ngx_http_lua_module);

    /* balancer_by_lua does not support yielding and
     * there cannot be any conflicts among concurrent requests,
     * thus it is safe to store the peer data in the main conf.
     */
    lmcf->balancer_peer_data = bp;

    rc = lscf->balancer.handler(r, lscf, L);

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (ctx->exited && ctx->exit_code != NGX_OK) {
        rc = ctx->exit_code;
        if (rc == NGX_ERROR
            || rc == NGX_BUSY
            || rc == NGX_DECLINED
#ifdef HAVE_BALANCER_STATUS_CODE_PATCH
            || rc >= NGX_HTTP_SPECIAL_RESPONSE
#endif
        ) {
            return rc;
        }

        if (rc > NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (bp->sockaddr && bp->socklen) {
        pc->sockaddr = bp->sockaddr;
        pc->socklen = bp->socklen;
        pc->cached = 0;
        pc->connection = NULL;
        pc->name = bp->host;

        bp->rrp.peers->single = 0;

        if (bp->more_tries) {
            r->upstream->peer.tries += bp->more_tries;
        }

        FUNC0("tries: %d", (int) r->upstream->peer.tries);

        return NGX_OK;
    }

    return FUNC7(pc, &bp->rrp);
}