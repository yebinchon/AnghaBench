#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ mdns; TYPE_1__* manager; } ;
typedef  TYPE_2__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_11__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  scalar_t__ ResolveSupport ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ RESOLVE_SUPPORT_NO ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC6 (TYPE_2__*,char*,char const**) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC9(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        ResolveSupport mode;
        const char *mdns;
        int r;

        FUNC0(message);
        FUNC0(l);

        r = FUNC8(l, error);
        if (r < 0)
                return r;

        r = FUNC6(message, "s", &mdns);
        if (r < 0)
                return r;

        if (FUNC2(mdns))
                mode = RESOLVE_SUPPORT_NO;
        else {
                mode = FUNC4(mdns);
                if (mode < 0)
                        return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid MulticastDNS setting: %s", mdns);
        }

        r = FUNC1(message, CAP_NET_ADMIN,
                                    "org.freedesktop.network1.set-mdns",
                                    NULL, true, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Polkit will call us back */

        if (l->mdns != mode) {
                l->mdns = mode;
                (void) FUNC3(l);
        }

        return FUNC7(message, NULL);
}