#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_24__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ ngx_str_t ;
struct TYPE_25__ {size_t async; size_t naddrs; TYPE_1__* addrs; scalar_t__ state; int /*<<< orphan*/  name; TYPE_8__* data; } ;
typedef  TYPE_5__ ngx_resolver_ctx_t ;
struct TYPE_22__ {scalar_t__ tries; int /*<<< orphan*/  start_time; } ;
struct TYPE_26__ {TYPE_3__* conf; TYPE_2__ peer; TYPE_7__* resolved; } ;
typedef  TYPE_6__ ngx_http_upstream_t ;
struct TYPE_27__ {size_t naddrs; int /*<<< orphan*/ * ctx; TYPE_1__* addrs; } ;
typedef  TYPE_7__ ngx_http_upstream_resolved_t ;
struct TYPE_28__ {TYPE_9__* connection; int /*<<< orphan*/  args; int /*<<< orphan*/  uri; TYPE_6__* upstream; } ;
typedef  TYPE_8__ ngx_http_request_t ;
struct TYPE_29__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_9__ ngx_connection_t ;
struct TYPE_23__ {scalar_t__ next_upstream_tries; } ;
struct TYPE_21__ {int /*<<< orphan*/  socklen; int /*<<< orphan*/  sockaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_BAD_GATEWAY ; 
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int NGX_SOCKADDR_STRLEN ; 
 int /*<<< orphan*/  ngx_current_msec ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(ngx_resolver_ctx_t *ctx)
{
    ngx_uint_t                     run_posted;
    ngx_connection_t              *c;
    ngx_http_request_t            *r;
    ngx_http_upstream_t           *u;
    ngx_http_upstream_resolved_t  *ur;

    run_posted = ctx->async;

    r = ctx->data;
    c = r->connection;

    u = r->upstream;
    ur = u->resolved;

    FUNC1(c->log, r);

    FUNC6(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http upstream resolve: \"%V?%V\"", &r->uri, &r->args);

    if (ctx->state) {
        FUNC7(NGX_LOG_ERR, r->connection->log, 0,
                      "%V could not be resolved (%i: %s)",
                      &ctx->name, ctx->state,
                      FUNC9(ctx->state));

        FUNC4(r, u, NGX_HTTP_BAD_GATEWAY);
        goto failed;
    }

    ur->naddrs = ctx->naddrs;
    ur->addrs = ctx->addrs;

#if (NGX_DEBUG)
    {
    u_char      text[NGX_SOCKADDR_STRLEN];
    ngx_str_t   addr;
    ngx_uint_t  i;

    addr.data = text;

    for (i = 0; i < ctx->naddrs; i++) {
        addr.len = ngx_sock_ntop(ur->addrs[i].sockaddr, ur->addrs[i].socklen,
                                 text, NGX_SOCKADDR_STRLEN, 0);

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "name was resolved to %V", &addr);
    }
    }
#endif

    if (FUNC3(r, ur) != NGX_OK) {
        FUNC4(r, u,
                                           NGX_HTTP_INTERNAL_SERVER_ERROR);
        goto failed;
    }

    FUNC8(ctx);
    ur->ctx = NULL;

    u->peer.start_time = ngx_current_msec;

    if (u->conf->next_upstream_tries
        && u->peer.tries > u->conf->next_upstream_tries)
    {
        u->peer.tries = u->conf->next_upstream_tries;
    }

    FUNC2(r, u);

failed:

    if (run_posted) {
        FUNC0(c);
    }
}