#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {TYPE_2__* upstream; TYPE_1__* lock; } ;
typedef  TYPE_3__ ngx_http_tfs_timers_data_t ;
struct TYPE_12__ {int /*<<< orphan*/  pool; TYPE_5__* finalize_data; int /*<<< orphan*/  log; } ;
typedef  TYPE_4__ ngx_http_tfs_t ;
struct TYPE_13__ {TYPE_6__* data; } ;
typedef  TYPE_5__ ngx_event_t ;
struct TYPE_14__ {TYPE_3__* data; } ;
typedef  TYPE_6__ ngx_connection_t ;
struct TYPE_10__ {int /*<<< orphan*/  rcs_interval; } ;
struct TYPE_9__ {int /*<<< orphan*/  ngx_http_tfs_kp_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC4(ngx_http_tfs_t *t)
{
    ngx_event_t                 *event;
    ngx_connection_t            *dummy;
    ngx_http_tfs_timers_data_t  *data;

    FUNC2(NGX_LOG_DEBUG_HTTP, t->log, 0, "http tfs timers finalize");

    event = t->finalize_data;
    dummy = event->data;
    data = dummy->data;

    FUNC1(t->pool);
    FUNC3(&data->lock->ngx_http_tfs_kp_mutex);
    FUNC0(event, data->upstream->rcs_interval);
    return NGX_OK;
}