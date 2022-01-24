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
struct TYPE_9__ {struct TYPE_9__* sysfs; TYPE_1__* manager; } ;
struct TYPE_8__ {int /*<<< orphan*/  devices; } ;
typedef  TYPE_2__ Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC4(Device *d) {
        FUNC0(d);

        FUNC1(d);

        FUNC3(d->manager->devices, d->sysfs);

        FUNC2(d->sysfs);
        FUNC2(d);
}