#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_5__* manager; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_15__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC10(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r;

        FUNC0(message);
        FUNC0(l);

        r = FUNC9(l, error);
        if (r < 0)
                return r;

        r = FUNC1(message, CAP_NET_ADMIN,
                                    "org.freedesktop.resolve1.revert",
                                    NULL, true, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Polkit will call us back */

        FUNC4(l);
        FUNC3(l);
        FUNC2(l, false);

        (void) FUNC5(l);
        (void) FUNC7(l->manager);
        (void) FUNC6(l->manager, "DNS");

        return FUNC8(message, NULL);
}