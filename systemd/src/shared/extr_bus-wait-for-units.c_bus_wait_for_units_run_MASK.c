#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  bus; } ;
typedef  TYPE_1__ BusWaitForUnits ;

/* Variables and functions */
 scalar_t__ BUS_WAIT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(BusWaitForUnits *d) {
        int r;

        FUNC0(d);

        while (d->state == BUS_WAIT_RUNNING) {

                r = FUNC1(d->bus, NULL);
                if (r < 0)
                        return r;
                if (r > 0)
                        continue;

                r = FUNC2(d->bus, (uint64_t) -1);
                if (r < 0)
                        return r;
        }

        return d->state;
}