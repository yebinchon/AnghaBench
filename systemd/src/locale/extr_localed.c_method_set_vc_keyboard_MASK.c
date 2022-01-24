#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  vc_keymap_toggle; int /*<<< orphan*/  vc_keymap; int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SD_BUS_ERROR_FAILED ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,char*,char const**,char const**,int*,int*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int FUNC16 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC20(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        Context *c = userdata;
        const char *keymap, *keymap_toggle;
        int convert, interactive, r;

        FUNC0(m);
        FUNC0(c);

        r = FUNC11(m, "ssbb", &keymap, &keymap_toggle, &convert, &interactive);
        if (r < 0)
                return r;

        keymap = FUNC2(keymap);
        keymap_toggle = FUNC2(keymap_toggle);

        r = FUNC17(c, m);
        if (r < 0) {
                FUNC5(r, "Failed to read virtual console keymap data: %m");
                return FUNC9(error, SD_BUS_ERROR_FAILED, "Failed to read virtual console keymap data");
        }

        if (FUNC14(keymap, c->vc_keymap) &&
            FUNC14(keymap_toggle, c->vc_keymap_toggle))
                return FUNC12(m, NULL);

        if ((keymap && (!FUNC3(keymap) || !FUNC15(keymap))) ||
            (keymap_toggle && (!FUNC3(keymap_toggle) || !FUNC15(keymap_toggle))))
                return FUNC9(error, SD_BUS_ERROR_INVALID_ARGS, "Received invalid keymap data");

        r = FUNC1(
                        m,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.locale1.set-keyboard",
                        NULL,
                        interactive,
                        UID_INVALID,
                        &c->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        if (FUNC4(&c->vc_keymap, keymap) < 0 ||
            FUNC4(&c->vc_keymap_toggle, keymap_toggle) < 0)
                return -ENOMEM;

        r = FUNC19(c);
        if (r < 0) {
                FUNC5(r, "Failed to set virtual console keymap: %m");
                return FUNC8(error, r, "Failed to set virtual console keymap: %m");
        }

        FUNC6("Changed virtual console keymap to '%s' toggle '%s'",
                 FUNC13(c->vc_keymap), FUNC13(c->vc_keymap_toggle));

        (void) FUNC18(FUNC10(m));

        (void) FUNC7(
                        FUNC10(m),
                        "/org/freedesktop/locale1",
                        "org.freedesktop.locale1",
                        "VConsoleKeymap", "VConsoleKeymapToggle", NULL);

        if (convert) {
                r = FUNC16(c, m);
                if (r < 0)
                        FUNC5(r, "Failed to convert keymap data: %m");
        }

        return FUNC12(m, NULL);
}