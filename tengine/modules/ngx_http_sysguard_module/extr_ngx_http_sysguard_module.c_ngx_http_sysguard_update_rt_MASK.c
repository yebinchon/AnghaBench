#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int ngx_uint_t ;
typedef  int ngx_msec_int_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ current; int nr_slots; int cached_rt; TYPE_3__* slots; scalar_t__ cached_rt_exptime; } ;
typedef  TYPE_2__ ngx_http_sysguard_rt_ring_t ;
struct TYPE_11__ {scalar_t__ stamp; scalar_t__ requests; scalar_t__ msec; scalar_t__ sec; } ;
typedef  TYPE_3__ ngx_http_sysguard_rt_node_t ;
struct TYPE_12__ {scalar_t__ rt_period; TYPE_2__* rt_ring; } ;
typedef  TYPE_4__ ngx_http_sysguard_conf_t ;
struct TYPE_13__ {TYPE_1__* connection; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 TYPE_4__* FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_sysguard_module ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_request_t *r, time_t exptime)
{
    ngx_uint_t                    rt = 0, rt_sec = 0,
                                  rt_requests = 0;
    ngx_int_t                     i, head, processed = 0;
    ngx_msec_int_t                rt_msec = 0;
    ngx_http_sysguard_conf_t     *glcf;
    ngx_http_sysguard_rt_ring_t  *ring;
    ngx_http_sysguard_rt_node_t  *node, *cur_node;

    glcf = FUNC0(r, ngx_http_sysguard_module);

    ring = glcf->rt_ring;

    ring->cached_rt_exptime = FUNC5() + exptime;

    i = ring->current;

    head = (ring->current + 1) % ring->nr_slots;

    cur_node = &ring->slots[ring->current];

    FUNC1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "sysguard update rt: i: %i, c:%i h: %i",
                   i, ring->current, head);

    for ( ; (i != head) && (processed < glcf->rt_period); i--, processed++) {

        node = &ring->slots[i];

        FUNC3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "node in loop: i: %i, p:%i, sec: %T, msec: %i, r: %ui",
                       i, processed, node->sec, node->msec, node->requests);

        if (node->stamp == 0
            || (cur_node->stamp - node->stamp) != processed)
        {

            FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "continue: i: %i, p:%i, node tamp: %T, "
                           "cur stamp: %T",
                           i, processed, node->stamp, cur_node->stamp);

           goto cont;
        }

        rt_sec += node->sec;
        rt_msec += node->msec;
        rt_requests += node->requests;

cont:
        /* wrap back to beginning */
        if (i == 0) {
            i = ring->nr_slots;
        }
    }

    FUNC1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "rt sec: %ui, rt msec:%i, rc requests: %ui",
                   rt_sec, rt_msec, rt_requests);

    rt_msec += (ngx_msec_int_t) (rt_sec * 1000);
    rt_msec = FUNC4(rt_msec, 0);

    if (rt_requests != 0 && rt_msec > 0) {

        rt_msec = rt_msec / rt_requests;

        rt = rt_msec / 1000 * 1000 + rt_msec % 1000;
    }

    ring->cached_rt = rt;

    return NGX_OK;
}