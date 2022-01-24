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
struct TYPE_14__ {char const* x11_layout; char const* x11_model; char const* x11_variant; char const* x11_options; int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SD_BUS_ERROR_FAILED ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,char*,char const**,char const**,char const**,char const**,int*,int*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int FUNC16 (char const*,char const*,char const*,char const*) ; 
 int FUNC17 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC20(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        Context *c = userdata;
        const char *layout, *model, *variant, *options;
        int convert, interactive, r;

        FUNC0(m);
        FUNC0(c);

        r = FUNC11(m, "ssssbb", &layout, &model, &variant, &options, &convert, &interactive);
        if (r < 0)
                return r;

        layout = FUNC2(layout);
        model = FUNC2(model);
        variant = FUNC2(variant);
        options = FUNC2(options);

        r = FUNC18(c, m);
        if (r < 0) {
                FUNC4(r, "Failed to read x11 keyboard layout data: %m");
                return FUNC9(error, SD_BUS_ERROR_FAILED, "Failed to read x11 keyboard layout data");
        }

        if (FUNC14(layout, c->x11_layout) &&
            FUNC14(model, c->x11_model) &&
            FUNC14(variant, c->x11_variant) &&
            FUNC14(options, c->x11_options))
                return FUNC12(m, NULL);

        if ((layout && !FUNC15(layout)) ||
            (model && !FUNC15(model)) ||
            (variant && !FUNC15(variant)) ||
            (options && !FUNC15(options)))
                return FUNC9(error, SD_BUS_ERROR_INVALID_ARGS, "Received invalid keyboard data");

        r = FUNC16(model, layout, variant, options);
        if (r < 0) {
                FUNC4(r, "Cannot compile XKB keymap for new x11 keyboard layout ('%s' / '%s' / '%s' / '%s'): %m",
                                FUNC13(model), FUNC13(layout), FUNC13(variant), FUNC13(options));

                if (r == -EOPNOTSUPP)
                        return FUNC9(error, SD_BUS_ERROR_NOT_SUPPORTED, "Local keyboard configuration not supported on this system.");

                return FUNC7(error, SD_BUS_ERROR_INVALID_ARGS, "Specified keymap cannot be compiled, refusing as invalid.");
        }

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

        if (FUNC3(&c->x11_layout, layout) < 0 ||
            FUNC3(&c->x11_model, model) < 0 ||
            FUNC3(&c->x11_variant, variant) < 0 ||
            FUNC3(&c->x11_options, options) < 0)
                return -ENOMEM;

        r = FUNC19(c);
        if (r < 0) {
                FUNC4(r, "Failed to set X11 keyboard layout: %m");
                return FUNC8(error, r, "Failed to set X11 keyboard layout: %m");
        }

        FUNC5("Changed X11 keyboard layout to '%s' model '%s' variant '%s' options '%s'",
                 FUNC13(c->x11_layout),
                 FUNC13(c->x11_model),
                 FUNC13(c->x11_variant),
                 FUNC13(c->x11_options));

        (void) FUNC6(
                        FUNC10(m),
                        "/org/freedesktop/locale1",
                        "org.freedesktop.locale1",
                        "X11Layout", "X11Model", "X11Variant", "X11Options", NULL);

        if (convert) {
                r = FUNC17(c, m);
                if (r < 0)
                        FUNC4(r, "Failed to convert keymap data: %m");
        }

        return FUNC12(m, NULL);
}