#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  userdata; int /*<<< orphan*/  bus_path; int /*<<< orphan*/  (* unit_callback ) (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ WaitForItem ;
struct TYPE_9__ {int /*<<< orphan*/  items; TYPE_1__* current; int /*<<< orphan*/  bus; int /*<<< orphan*/  slot_disconnected; } ;
typedef  TYPE_2__ BusWaitForUnits ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(BusWaitForUnits *d) {
        WaitForItem *item;

        FUNC0(d);

        d->slot_disconnected = FUNC3(d->slot_disconnected);
        d->bus = FUNC4(d->bus);

        while ((item = FUNC1(d->items))) {
                d->current = item;

                item->unit_callback(d, item->bus_path, false, item->userdata);
                FUNC6(item);
        }

        d->items = FUNC2(d->items);
}