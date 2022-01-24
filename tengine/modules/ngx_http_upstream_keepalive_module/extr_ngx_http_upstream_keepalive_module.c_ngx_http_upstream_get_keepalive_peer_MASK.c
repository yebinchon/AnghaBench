#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_peer_connection_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_11__ {scalar_t__ (* original_get_peer ) (TYPE_2__*,int /*<<< orphan*/ ) ;TYPE_1__* conf; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_http_upstream_keepalive_peer_data_t ;
struct TYPE_9__ {int /*<<< orphan*/  free; int /*<<< orphan*/  cache; scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_upstream_keepalive_cache_t ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queue ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_upstream_keepalive_peer_data_t  *kp = data;

    ngx_int_t  rc;

    FUNC2(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "get keepalive peer");

    /* ask balancer */

    rc = kp->original_get_peer(pc, kp->data);

    if (rc != NGX_OK) {
        return rc;
    }

    /* search cache for suitable connection */

    if (kp->conf->index) {
        return FUNC1(pc, kp);
    }

    return FUNC0(
                        pc,
                        &kp->conf->cache,
                        &kp->conf->free,
                        FUNC3(ngx_http_upstream_keepalive_cache_t, queue));
}