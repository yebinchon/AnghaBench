#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ job_id; int /*<<< orphan*/  userdata; int /*<<< orphan*/  bus_path; int /*<<< orphan*/  (* unit_callback ) (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;scalar_t__ active_state; int /*<<< orphan*/  flags; scalar_t__ clean_result; TYPE_2__* parent; } ;
typedef  TYPE_1__ WaitForItem ;
struct TYPE_10__ {int has_failed; TYPE_1__* current; } ;
typedef  TYPE_2__ BusWaitForUnits ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_WAIT_FOR_INACTIVE ; 
 int /*<<< orphan*/  BUS_WAIT_FOR_MAINTENANCE_END ; 
 int /*<<< orphan*/  BUS_WAIT_NO_JOB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(WaitForItem *item) {
        BusWaitForUnits *d;

        FUNC1(item);
        FUNC2(d = item->parent);

        if (FUNC0(item->flags, BUS_WAIT_FOR_MAINTENANCE_END)) {

                if (item->clean_result && !FUNC4(item->clean_result, "success"))
                        d->has_failed = true;

                if (!item->active_state || FUNC4(item->active_state, "maintenance"))
                        return;
        }

        if (FUNC0(item->flags, BUS_WAIT_NO_JOB) && item->job_id != 0)
                return;

        if (FUNC0(item->flags, BUS_WAIT_FOR_INACTIVE)) {

                if (FUNC5(item->active_state, "failed"))
                        d->has_failed = true;
                else if (!FUNC5(item->active_state, "inactive"))
                        return;
        }

        if (item->unit_callback) {
                d->current = item;
                item->unit_callback(d, item->bus_path, true, item->userdata);
        }

        FUNC7(item);

        FUNC3(d);
}