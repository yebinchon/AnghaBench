#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_12__ {size_t current; int nr_slots; TYPE_3__* slots; } ;
typedef  TYPE_2__ ngx_http_sysguard_rt_ring_t ;
struct TYPE_13__ {int stamp; int /*<<< orphan*/  requests; int /*<<< orphan*/  msec; int /*<<< orphan*/  sec; } ;
typedef  TYPE_3__ ngx_http_sysguard_rt_node_t ;
struct TYPE_14__ {scalar_t__ rt; TYPE_2__* rt_ring; int /*<<< orphan*/  enable; } ;
typedef  TYPE_4__ ngx_http_sysguard_conf_t ;
struct TYPE_15__ {int start_sec; scalar_t__ start_msec; TYPE_1__* connection; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_16__ {int sec; scalar_t__ msec; } ;
struct TYPE_11__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_CONF_UNSET ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_9__* ngx_cached_time ; 
 TYPE_4__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_sysguard_module ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 

void
FUNC4(ngx_http_request_t *r)
{
    ngx_http_sysguard_rt_ring_t    *ring;
    ngx_http_sysguard_rt_node_t    *node;
    time_t                          cur_sec, off;
    ngx_uint_t                      cur_msec;
    ngx_http_sysguard_conf_t       *glcf;

    glcf = FUNC1(r, ngx_http_sysguard_module);

    if (!glcf->enable) {
        return;
    }

    if (glcf->rt == NGX_CONF_UNSET) {
        return;
    }

    cur_sec = ngx_cached_time->sec;
    cur_msec = ngx_cached_time->msec;

    ring = glcf->rt_ring;

    node = &ring->slots[ring->current];

    off = cur_sec - node->stamp;

    FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "sysguard update rt node: off: %T, stamp:%T, cur time: %T",
                   off, node->stamp, cur_sec);

    if (off) {

        ring->current = (ring->current + off) % ring->nr_slots;

        node = &ring->slots[ring->current];

        FUNC0(node, 0, sizeof(ngx_http_sysguard_rt_node_t));

        node->stamp = cur_sec;
    }

    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "sysguard update rt node: new current: %i",
                   ring->current);

    node->sec += cur_sec - r->start_sec;
    node->msec += cur_msec - r->start_msec;
    node->requests++;
}