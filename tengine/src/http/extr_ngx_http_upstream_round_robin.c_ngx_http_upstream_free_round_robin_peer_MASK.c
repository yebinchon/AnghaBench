#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* time_t ;
typedef  int ngx_uint_t ;
struct TYPE_12__ {TYPE_2__* tries; int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_peer_connection_t ;
struct TYPE_13__ {int fails; scalar_t__ accessed; scalar_t__ checked; int max_fails; int effective_weight; int weight; int /*<<< orphan*/  conns; } ;
typedef  TYPE_2__ ngx_http_upstream_rr_peer_t ;
struct TYPE_14__ {TYPE_5__* peers; TYPE_2__* current; } ;
typedef  TYPE_3__ ngx_http_upstream_rr_peer_data_t ;
struct TYPE_15__ {scalar_t__ single; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 int NGX_PEER_FAILED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 () ; 

void
FUNC7(ngx_peer_connection_t *pc, void *data,
    ngx_uint_t state)
{
    ngx_http_upstream_rr_peer_data_t  *rrp = data;

    time_t                       now;
    ngx_http_upstream_rr_peer_t  *peer;

    FUNC4(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "free rr peer %ui %ui", pc->tries, state);

    /* TODO: NGX_PEER_KEEPALIVE */

    peer = rrp->current;

    FUNC2(rrp->peers);
    FUNC0(rrp->peers, peer);

    if (rrp->peers->single) {

        peer->conns--;

        FUNC1(rrp->peers, peer);
        FUNC3(rrp->peers);

        pc->tries = 0;
        return;
    }

    if (state & NGX_PEER_FAILED) {
        now = FUNC6();

        peer->fails++;
        peer->accessed = now;
        peer->checked = now;

        if (peer->max_fails) {
            peer->effective_weight -= peer->weight / peer->max_fails;

            if (peer->fails >= peer->max_fails) {
                FUNC5(NGX_LOG_WARN, pc->log, 0,
                              "upstream server temporarily disabled");
            }
        }

        FUNC4(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "free rr peer failed: %p %i",
                       peer, peer->effective_weight);

        if (peer->effective_weight < 0) {
            peer->effective_weight = 0;
        }

    } else {

        /* mark peer live if check passed */

        if (peer->accessed < peer->checked) {
            peer->fails = 0;
        }
    }

    peer->conns--;

    FUNC1(rrp->peers, peer);
    FUNC3(rrp->peers);

    if (pc->tries) {
        pc->tries--;
    }
}