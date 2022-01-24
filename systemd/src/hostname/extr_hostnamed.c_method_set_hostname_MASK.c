#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char** data; int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 char* FALLBACK_HOSTNAME ; 
 size_t PROP_HOSTNAME ; 
 size_t PROP_STATIC_HOSTNAME ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,char*,char const**,int*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        Context *c = userdata;
        const char *name;
        int interactive;
        int r;

        FUNC0(m);
        FUNC0(c);

        r = FUNC12(m, "sb", &name, &interactive);
        if (r < 0)
                return r;

        if (FUNC5(name))
                name = c->data[PROP_STATIC_HOSTNAME];

        if (FUNC5(name))
                name = FALLBACK_HOSTNAME;

        if (!FUNC4(name, false))
                return FUNC10(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid hostname '%s'", name);

        if (FUNC14(name, c->data[PROP_HOSTNAME]))
                return FUNC13(m, NULL);

        r = FUNC1(
                        m,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.hostname1.set-hostname",
                        NULL,
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC3(&c->data[PROP_HOSTNAME], name);
        if (r < 0)
                return r;

        r = FUNC2(c);
        if (r < 0) {
                FUNC6(r, "Failed to set host name: %m");
                return FUNC9(error, r, "Failed to set hostname: %m");
        }

        FUNC7("Changed host name to '%s'", FUNC15(c->data[PROP_HOSTNAME]));

        (void) FUNC8(FUNC11(m), "/org/freedesktop/hostname1", "org.freedesktop.hostname1", "Hostname", NULL);

        return FUNC13(m, NULL);
}