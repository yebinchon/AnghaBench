#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int match_callbacks_modified; int /*<<< orphan*/  match_callbacks; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(sd_bus *bus, sd_bus_message *m) {
        int r;

        FUNC0(bus);
        FUNC0(m);

        do {
                bus->match_callbacks_modified = false;

                r = FUNC1(bus, &bus->match_callbacks, m);
                if (r != 0)
                        return r;

        } while (bus->match_callbacks_modified);

        return 0;
}