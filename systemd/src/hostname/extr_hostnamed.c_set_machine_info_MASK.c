#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message_handler_t ;
struct TYPE_11__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int PROP_CHASSIS ; 
 int PROP_DEPLOYMENT ; 
 int PROP_ICON_NAME ; 
 int PROP_LOCATION ; 
 int PROP_PRETTY_HOSTNAME ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,char*,char const**,int*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 

__attribute__((used)) static int FUNC20(Context *c, sd_bus_message *m, int prop, sd_bus_message_handler_t cb, sd_bus_error *error) {
        int interactive;
        const char *name;
        int r;

        FUNC0(c);
        FUNC0(m);

        r = FUNC13(m, "sb", &name, &interactive);
        if (r < 0)
                return r;

        name = FUNC3(name);

        if (FUNC15(name, c->data[prop]))
                return FUNC14(m, NULL);

        if (!FUNC6(name)) {
                /* The icon name might ultimately be used as file
                 * name, so better be safe than sorry */

                if (prop == PROP_ICON_NAME && !FUNC4(name))
                        return FUNC11(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid icon name '%s'", name);
                if (prop == PROP_PRETTY_HOSTNAME && FUNC16(name, NULL))
                        return FUNC11(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid pretty host name '%s'", name);
                if (prop == PROP_CHASSIS && !FUNC18(name))
                        return FUNC11(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid chassis '%s'", name);
                if (prop == PROP_DEPLOYMENT && !FUNC19(name))
                        return FUNC11(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid deployment '%s'", name);
                if (prop == PROP_LOCATION && FUNC16(name, NULL))
                        return FUNC11(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid location '%s'", name);
        }

        /* Since the pretty hostname should always be changed at the
         * same time as the static one, use the same policy action for
         * both... */

        r = FUNC1(
                        m,
                        CAP_SYS_ADMIN,
                        prop == PROP_PRETTY_HOSTNAME ? "org.freedesktop.hostname1.set-static-hostname" : "org.freedesktop.hostname1.set-machine-info",
                        NULL,
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC5(&c->data[prop], name);
        if (r < 0)
                return r;

        r = FUNC2(c);
        if (r < 0) {
                FUNC7(r, "Failed to write machine info: %m");
                return FUNC10(error, r, "Failed to write machine info: %m");
        }

        FUNC8("Changed %s to '%s'",
                 prop == PROP_PRETTY_HOSTNAME ? "pretty host name" :
                 prop == PROP_DEPLOYMENT ? "deployment" :
                 prop == PROP_LOCATION ? "location" :
                 prop == PROP_CHASSIS ? "chassis" : "icon name", FUNC17(c->data[prop]));

        (void) FUNC9(
                        FUNC12(m),
                        "/org/freedesktop/hostname1",
                        "org.freedesktop.hostname1",
                        prop == PROP_PRETTY_HOSTNAME ? "PrettyHostname" :
                        prop == PROP_DEPLOYMENT ? "Deployment" :
                        prop == PROP_LOCATION ? "Location" :
                        prop == PROP_CHASSIS ? "Chassis" : "IconName" , NULL);

        return FUNC14(m, NULL);
}