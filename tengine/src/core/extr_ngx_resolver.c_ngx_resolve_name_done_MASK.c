#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_17__ {TYPE_5__* event; int /*<<< orphan*/  name_expire_queue; int /*<<< orphan*/  name_rbtree; int /*<<< orphan*/  srv_expire_queue; int /*<<< orphan*/  srv_rbtree; int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_resolver_t ;
struct TYPE_18__ {TYPE_5__* waiting; } ;
typedef  TYPE_4__ ngx_resolver_node_t ;
struct TYPE_16__ {scalar_t__ len; } ;
struct TYPE_19__ {size_t nsrvs; scalar_t__ timer_set; struct TYPE_19__* event; TYPE_2__ service; int /*<<< orphan*/  name; struct TYPE_19__* next; TYPE_4__* node; int /*<<< orphan*/  state; TYPE_10__* srvs; scalar_t__ quick; TYPE_3__* resolver; } ;
typedef  TYPE_5__ ngx_resolver_ctx_t ;
struct TYPE_15__ {TYPE_10__* data; } ;
struct TYPE_14__ {TYPE_1__ name; struct TYPE_14__* addrs; struct TYPE_14__* sockaddr; TYPE_5__* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_AGAIN ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_RESOLVE_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 

void
FUNC7(ngx_resolver_ctx_t *ctx)
{
    ngx_uint_t            i;
    ngx_resolver_t       *r;
    ngx_resolver_ctx_t   *w, **p;
    ngx_resolver_node_t  *rn;

    r = ctx->resolver;

    FUNC1(NGX_LOG_DEBUG_CORE, r->log, 0,
                   "resolve name done: %i", ctx->state);

    if (ctx->quick) {
        return;
    }

    if (ctx->event && ctx->event->timer_set) {
        FUNC0(ctx->event);
    }

    /* lock name mutex */

    if (ctx->nsrvs) {
        for (i = 0; i < ctx->nsrvs; i++) {
            if (ctx->srvs[i].ctx) {
                FUNC7(ctx->srvs[i].ctx);
            }

            if (ctx->srvs[i].addrs) {
                FUNC4(r, ctx->srvs[i].addrs->sockaddr);
                FUNC4(r, ctx->srvs[i].addrs);
            }

            FUNC4(r, ctx->srvs[i].name.data);
        }

        FUNC4(r, ctx->srvs);
    }

    if (ctx->state == NGX_AGAIN || ctx->state == NGX_RESOLVE_TIMEDOUT) {

        rn = ctx->node;

        if (rn) {
            p = &rn->waiting;
            w = rn->waiting;

            while (w) {
                if (w == ctx) {
                    *p = w->next;

                    goto done;
                }

                p = &w->next;
                w = w->next;
            }

            FUNC2(NGX_LOG_ALERT, r->log, 0,
                          "could not cancel %V resolving", &ctx->name);
        }
    }

done:

    if (ctx->service.len) {
        FUNC3(r, &r->srv_rbtree, &r->srv_expire_queue);

    } else {
        FUNC3(r, &r->name_rbtree, &r->name_expire_queue);
    }

    /* unlock name mutex */

    /* lock alloc mutex */

    if (ctx->event) {
        FUNC5(r, ctx->event);
    }

    FUNC5(r, ctx);

    /* unlock alloc mutex */

    if (r->event->timer_set && FUNC6(r)) {
        FUNC0(r->event);
    }
}