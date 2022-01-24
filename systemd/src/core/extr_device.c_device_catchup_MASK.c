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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_5__ {scalar_t__ enumerated_found; scalar_t__ found; } ;
typedef  TYPE_1__ Device ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DEVICE_FOUND_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(Unit *u) {
        Device *d = FUNC0(u);

        FUNC1(d);

        /* Second, let's update the state with the enumerated state if it's different */
        if (d->enumerated_found == d->found)
                return;

        FUNC2(d, d->enumerated_found, DEVICE_FOUND_MASK);
}