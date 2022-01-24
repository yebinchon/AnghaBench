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
struct TYPE_11__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t PROP_STATIC_HOSTNAME ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*,char*,char const**,int*) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        Context *c = userdata;
        const char *name;
        int interactive;
        int r;

        FUNC0(m);
        FUNC0(c);

        r = FUNC14(m, "sb", &name, &interactive);
        if (r < 0)
                return r;

        name = FUNC4(name);

        if (FUNC16(name, c->data[PROP_STATIC_HOSTNAME]))
                return FUNC15(m, NULL);

        if (!FUNC7(name) && !FUNC6(name, false))
                return FUNC12(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid static hostname '%s'", name);

        r = FUNC1(
                        m,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.hostname1.set-static-hostname",
                        NULL,
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC5(&c->data[PROP_STATIC_HOSTNAME], name);
        if (r < 0)
                return r;

        r = FUNC2(c);
        if (r < 0) {
                FUNC8(r, "Failed to set host name: %m");
                return FUNC11(error, r, "Failed to set hostname: %m");
        }

        r = FUNC3(c);
        if (r < 0) {
                FUNC8(r, "Failed to write static host name: %m");
                return FUNC11(error, r, "Failed to set static hostname: %m");
        }

        FUNC9("Changed static host name to '%s'", FUNC17(c->data[PROP_STATIC_HOSTNAME]));

        (void) FUNC10(FUNC13(m), "/org/freedesktop/hostname1", "org.freedesktop.hostname1", "StaticHostname", NULL);

        return FUNC15(m, NULL);
}