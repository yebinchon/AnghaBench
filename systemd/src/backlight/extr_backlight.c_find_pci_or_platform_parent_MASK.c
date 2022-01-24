#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ **** sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITS ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ******) ; 
 int FUNC2 (int,char*,char const*,char const*,char const*) ; 
 int FUNC3 (char const*,unsigned long*) ; 
 int FUNC4 (int /*<<< orphan*/ *****,int /*<<< orphan*/ ******) ; 
 int FUNC5 (int /*<<< orphan*/ *****,char const**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *****,char*,char const**) ; 
 int FUNC7 (int /*<<< orphan*/ *****,char const**) ; 
 char* FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(sd_device *device, sd_device **ret) {
        const char *subsystem, *sysname, *value;
        sd_device *parent;
        int r;

        FUNC1(&device);
        FUNC1(ret);

        r = FUNC4(device, &parent);
        if (r < 0)
                return r;

        r = FUNC5(parent, &subsystem);
        if (r < 0)
                return r;

        r = FUNC7(parent, &sysname);
        if (r < 0)
                return r;

        if (FUNC9(subsystem, "drm")) {
                const char *c;

                c = FUNC8(sysname, "card");
                if (!c)
                        return -ENODATA;

                c += FUNC10(c, DIGITS);
                if (*c == '-') {
                        /* A connector DRM device, let's ignore all but LVDS and eDP! */
                        if (!FUNC0(c, "-LVDS-", "-Embedded DisplayPort-"))
                                return -EOPNOTSUPP;
                }

        } else if (FUNC9(subsystem, "pci") &&
                   FUNC6(parent, "class", &value) >= 0) {
                unsigned long class = 0;

                r = FUNC3(value, &class);
                if (r < 0)
                        return FUNC2(r, "Cannot parse PCI class '%s' of device %s:%s: %m",
                                                 value, subsystem, sysname);

                /* Graphics card */
                if (class == 0x30000) {
                        *ret = parent;
                        return 0;
                }

        } else if (FUNC9(subsystem, "platform")) {
                *ret = parent;
                return 0;
        }

        return FUNC11(parent, ret);
}