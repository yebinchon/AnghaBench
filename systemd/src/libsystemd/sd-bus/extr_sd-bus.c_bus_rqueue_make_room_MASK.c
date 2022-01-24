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
struct TYPE_4__ {scalar_t__ rqueue_size; int /*<<< orphan*/  rqueue_allocated; int /*<<< orphan*/  rqueue; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 scalar_t__ BUS_RQUEUE_MAX ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(sd_bus *bus) {
        FUNC1(bus);

        if (bus->rqueue_size >= BUS_RQUEUE_MAX)
                return -ENOBUFS;

        if (!FUNC0(bus->rqueue, bus->rqueue_allocated, bus->rqueue_size + 1))
                return -ENOMEM;

        return 0;
}