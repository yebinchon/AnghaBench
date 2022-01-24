#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_5__ {scalar_t__ tries; int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_peer_connection_t ;
struct TYPE_6__ {int last_peer_state; scalar_t__ socklen; scalar_t__ sockaddr; } ;
typedef  TYPE_2__ ngx_http_lua_balancer_peer_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC2(ngx_peer_connection_t *pc, void *data,
    ngx_uint_t state)
{
    ngx_http_lua_balancer_peer_data_t  *bp = data;

    FUNC1(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "lua balancer free peer, tries: %ui", pc->tries);

    if (bp->sockaddr && bp->socklen) {
        bp->last_peer_state = (int) state;

        if (pc->tries) {
            pc->tries--;
        }

        return;
    }

    /* fallback */

    FUNC0(pc, data, state);
}