#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ timer_t ;
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int FUNC0 (int) ; 
 int ep ; 
 int /*<<< orphan*/ * event_list ; 
 scalar_t__ event_timer ; 
 scalar_t__ nevents ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(ngx_cycle_t *cycle)
{
    if (event_timer != (timer_t) -1) {
        if (FUNC3(event_timer) == -1) {
            FUNC2(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "timer_delete() failed");
        }

        event_timer = (timer_t) -1;
    }

    if (FUNC0(ep) == -1) {
        FUNC2(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "close() event port failed");
    }

    ep = -1;

    FUNC1(event_list);

    event_list = NULL;
    nevents = 0;
}