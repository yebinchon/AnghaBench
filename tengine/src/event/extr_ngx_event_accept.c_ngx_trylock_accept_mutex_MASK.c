#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ ngx_accept_events ; 
 int /*<<< orphan*/  ngx_accept_mutex ; 
 int ngx_accept_mutex_held ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC6(ngx_cycle_t *cycle)
{
    if (FUNC4(&ngx_accept_mutex)) {

        FUNC2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                       "accept mutex locked");

        if (ngx_accept_mutex_held && ngx_accept_events == 0) {
            return NGX_OK;
        }

        if (FUNC1(cycle) == NGX_ERROR) {
            FUNC5(&ngx_accept_mutex);
            return NGX_ERROR;
        }

        ngx_accept_events = 0;
        ngx_accept_mutex_held = 1;

        return NGX_OK;
    }

    FUNC3(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "accept mutex lock failed: %ui", ngx_accept_mutex_held);

    if (ngx_accept_mutex_held) {
        if (FUNC0(cycle, 0) == NGX_ERROR) {
            return NGX_ERROR;
        }

        ngx_accept_mutex_held = 0;
    }

    return NGX_OK;
}