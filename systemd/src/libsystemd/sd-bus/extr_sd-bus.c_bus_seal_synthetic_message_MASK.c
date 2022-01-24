#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ realtime; scalar_t__ monotonic; scalar_t__ attach_timestamp; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

int FUNC3(sd_bus *b, sd_bus_message *m) {
        FUNC0(b);
        FUNC0(m);

        /* Fake some timestamps, if they were requested, and not
         * already initialized */
        if (b->attach_timestamp) {
                if (m->realtime <= 0)
                        m->realtime = FUNC1(CLOCK_REALTIME);

                if (m->monotonic <= 0)
                        m->monotonic = FUNC1(CLOCK_MONOTONIC);
        }

        /* The bus specification says the serial number cannot be 0,
         * hence let's fill something in for synthetic messages. Since
         * synthetic messages might have a fake sender and we don't
         * want to interfere with the real sender's serial numbers we
         * pick a fixed, artificial one. We use (uint32_t) -1 rather
         * than (uint64_t) -1 since dbus1 only had 32bit identifiers,
         * even though kdbus can do 64bit. */
        return FUNC2(m, 0xFFFFFFFFULL, 0);
}