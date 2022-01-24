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
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/ * change_index ; 
 int /*<<< orphan*/ * change_list ; 
 int FUNC0 (int) ; 
 int dp ; 
 int /*<<< orphan*/ * event_list ; 
 scalar_t__ max_changes ; 
 scalar_t__ nchanges ; 
 scalar_t__ nevents ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(ngx_cycle_t *cycle)
{
    if (FUNC0(dp) == -1) {
        FUNC2(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "close(/dev/poll) failed");
    }

    dp = -1;

    FUNC1(change_list);
    FUNC1(event_list);
    FUNC1(change_index);

    change_list = NULL;
    event_list = NULL;
    change_index = NULL;
    max_changes = 0;
    nchanges = 0;
    nevents = 0;
}