#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ llmnr_support; TYPE_1__* manager; } ;
typedef  TYPE_2__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_13__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  scalar_t__ ResolveSupport ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ RESOLVE_SUPPORT_YES ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC8 (TYPE_2__*,char*,char const**) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC11(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        ResolveSupport mode;
        const char *llmnr;
        int r;

        FUNC0(message);
        FUNC0(l);

        r = FUNC10(l, error);
        if (r < 0)
                return r;

        r = FUNC8(message, "s", &llmnr);
        if (r < 0)
                return r;

        if (FUNC2(llmnr))
                mode = RESOLVE_SUPPORT_YES;
        else {
                mode = FUNC6(llmnr);
                if (mode < 0)
                        return FUNC7(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid LLMNR setting: %s", llmnr);
        }

        r = FUNC1(message, CAP_NET_ADMIN,
                                    "org.freedesktop.resolve1.set-llmnr",
                                    NULL, true, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Polkit will call us back */

        l->llmnr_support = mode;
        FUNC4(l);
        FUNC3(l, false);

        (void) FUNC5(l);

        return FUNC9(message, NULL);
}