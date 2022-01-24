#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int resource_count; scalar_t__ wait_count; int /*<<< orphan*/  wait_queue; } ;
typedef  TYPE_1__ ngx_http_lua_sema_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int NGX_OK ; 
 TYPE_5__* ngx_cycle ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(ngx_http_lua_sema_t **psem,
    int n, char **errmsg)
{
    ngx_http_lua_sema_t    *sem;

    sem = FUNC0();
    if (sem == NULL) {
        *errmsg = "no memory";
        return NGX_ERROR;
    }

    FUNC2(&sem->wait_queue);

    sem->resource_count = n;
    sem->wait_count = 0;
    *psem = sem;

    FUNC1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "http lua semaphore new: %p, resources: %d",
                   sem, sem->resource_count);

    return NGX_OK;
}