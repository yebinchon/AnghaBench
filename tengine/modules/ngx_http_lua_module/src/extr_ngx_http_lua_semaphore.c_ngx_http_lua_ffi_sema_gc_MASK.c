#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  wait_queue; } ;
typedef  TYPE_1__ ngx_http_lua_sema_t ;
struct TYPE_8__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 TYPE_6__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_quit ; 
 int /*<<< orphan*/  ngx_terminate ; 

void
FUNC4(ngx_http_lua_sema_t *sem)
{
    FUNC1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "in lua gc, semaphore %p", sem);

    if (sem == NULL) {
        return;
    }

    if (!ngx_terminate
        && !ngx_quit
        && !FUNC3(&sem->wait_queue))
    {
        FUNC2(NGX_LOG_ERR, ngx_cycle->log, 0,
                      "in lua semaphore gc wait queue is"
                      " not empty while the semaphore %p is being "
                      "destroyed", sem);
    }

    FUNC0(sem);
}