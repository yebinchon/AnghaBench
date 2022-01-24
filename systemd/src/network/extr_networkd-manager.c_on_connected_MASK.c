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
struct TYPE_8__ {scalar_t__ links_requesting_uuid; scalar_t__ dynamic_timezone; scalar_t__ dynamic_hostname; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *message, void *userdata, sd_bus_error *ret_error) {
        Manager *m = userdata;

        FUNC0(message);
        FUNC0(m);

        /* Did we get a timezone or transient hostname from DHCP while D-Bus wasn't up yet? */
        if (m->dynamic_hostname)
                (void) FUNC2(m, m->dynamic_hostname);
        if (m->dynamic_timezone)
                (void) FUNC3(m, m->dynamic_timezone);
        if (m->links_requesting_uuid)
                (void) FUNC1(m, NULL);

        return 0;
}