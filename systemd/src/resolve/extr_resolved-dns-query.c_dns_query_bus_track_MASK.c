#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  bus_track; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  TYPE_1__ DnsQuery ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  on_bus_track ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC4(DnsQuery *q, sd_bus_message *m) {
        int r;

        FUNC0(q);
        FUNC0(m);

        if (!q->bus_track) {
                r = FUNC3(FUNC1(m), &q->bus_track, on_bus_track, q);
                if (r < 0)
                        return r;
        }

        r = FUNC2(q->bus_track, m);
        if (r < 0)
                return r;

        return 0;
}