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
struct TYPE_5__ {int /*<<< orphan*/  io_accounting_base; int /*<<< orphan*/ * io_accounting_last; } ;
typedef  TYPE_1__ Unit ;
typedef  size_t CGroupIOAccountingMetric ;

/* Variables and functions */
 int /*<<< orphan*/  UINT64_MAX ; 
 size_t _CGROUP_IO_ACCOUNTING_METRIC_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(Unit *u) {
        int r;

        FUNC0(u);

        for (CGroupIOAccountingMetric i = 0; i < _CGROUP_IO_ACCOUNTING_METRIC_MAX; i++)
                u->io_accounting_last[i] = UINT64_MAX;

        r = FUNC1(u, u->io_accounting_base);
        if (r < 0) {
                FUNC2(u->io_accounting_base);
                return r;
        }

        return 0;
}