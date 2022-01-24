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
struct TYPE_10__ {TYPE_1__* manager; } ;
typedef  TYPE_2__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_9__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC4(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r;

        FUNC0(message);
        FUNC0(l);

        r = FUNC1(message, CAP_NET_ADMIN,
                                    "org.freedesktop.network1.reconfigure",
                                    NULL, true, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Polkit will call us back */

        r = FUNC2(l, true);
        if (r < 0)
                return r;

        return FUNC3(message, NULL);
}