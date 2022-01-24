#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ timer_set; TYPE_2__* data; } ;
struct TYPE_10__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_11__ {int delete; int /*<<< orphan*/ * pool; TYPE_6__ check_timeout_ev; TYPE_6__ check_ev; TYPE_1__ pc; } ;
typedef  TYPE_2__ ngx_http_upstream_check_peer_t ;
struct TYPE_13__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_9__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*,TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC5(ngx_http_upstream_check_peer_t  *peer)
{
    if (peer != peer->check_ev.data) {
        FUNC3(NGX_LOG_CRIT, ngx_cycle->log, 0,
                      "different peer: %p, data: %p, timer: %p",
                      peer, peer->check_ev.data, &peer->check_ev);
    }

    if (peer->pc.connection) {
        FUNC0(peer->pc.connection);
        peer->pc.connection = NULL;
    }

    if (peer->check_ev.timer_set) {
        FUNC1(&peer->check_ev);
    }

    if (peer->check_timeout_ev.timer_set) {
        FUNC1(&peer->check_timeout_ev);
    }

    if (peer->pool != NULL) {
        FUNC2(peer->pool);
        peer->pool = NULL;
    }

    FUNC4(peer, sizeof(ngx_http_upstream_check_peer_t));

    peer->delete = 1;
}