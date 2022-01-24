#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* manager; } ;
struct TYPE_12__ {scalar_t__ sysfs; } ;
struct TYPE_11__ {int /*<<< orphan*/ * devices_by_sysfs; } ;
typedef  int /*<<< orphan*/  Hashmap ;
typedef  TYPE_2__ Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 TYPE_7__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  same_sysfs ; 

__attribute__((used)) static void FUNC7(Device *d) {
        Hashmap *devices;
        Device *first;

        FUNC2(d);

        if (!d->sysfs)
                return;

        /* Remove this unit from the chain of devices which share the
         * same sysfs path. */
        devices = FUNC1(d)->manager->devices_by_sysfs;
        first = FUNC3(devices, d->sysfs);
        FUNC0(same_sysfs, first, d);

        if (first)
                FUNC5(devices, d->sysfs, first->sysfs, first);
        else
                FUNC4(devices, d->sysfs);

        d->sysfs = FUNC6(d->sysfs);
}