#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ posted; scalar_t__ timer_set; } ;
struct TYPE_5__ {TYPE_2__ sleep; } ;
typedef  TYPE_1__ ngx_http_lua_co_ctx_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 TYPE_4__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(void *data)
{
    ngx_http_lua_co_ctx_t          *coctx = data;

    if (coctx->sleep.timer_set) {
        FUNC2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "lua clean up the timer for pending ngx.sleep");

        FUNC0(&coctx->sleep);
    }

#ifdef HAVE_POSTED_DELAYED_EVENTS_PATCH
    if (coctx->sleep.posted) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "lua clean up the posted event for pending ngx.sleep");

        ngx_delete_posted_event(&coctx->sleep);
    }
#endif
}