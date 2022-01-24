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
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  bitmask_rel ;
typedef  int /*<<< orphan*/  bitmask_props ;
typedef  int /*<<< orphan*/  bitmask_key ;
typedef  int /*<<< orphan*/  bitmask_ev ;
typedef  int /*<<< orphan*/  bitmask_abs ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MAX ; 
 int /*<<< orphan*/  EV_MAX ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  INPUT_PROP_MAX ; 
 int /*<<< orphan*/  KEY_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_MAX ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char const**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned long*,unsigned long*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned long*,unsigned long*,unsigned long*,unsigned long*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,char*) ; 

__attribute__((used)) static int FUNC13(sd_device *dev, int argc, char *argv[], bool test) {
        sd_device *pdev;
        unsigned long bitmask_ev[FUNC0(EV_MAX)];
        unsigned long bitmask_abs[FUNC0(ABS_MAX)];
        unsigned long bitmask_key[FUNC0(KEY_MAX)];
        unsigned long bitmask_rel[FUNC0(REL_MAX)];
        unsigned long bitmask_props[FUNC0(INPUT_PROP_MAX)];
        const char *sysname, *devnode;
        bool is_pointer;
        bool is_key;

        FUNC1(dev);

        /* walk up the parental chain until we find the real input device; the
         * argument is very likely a subdevice of this, like eventN */
        for (pdev = dev; pdev; ) {
                const char *s;

                if (FUNC6(pdev, "capabilities/ev", &s) >= 0)
                        break;

                if (FUNC5(pdev, "input", NULL, &pdev) >= 0)
                        continue;

                pdev = NULL;
                break;
        }

        if (pdev) {
                /* Use this as a flag that input devices were detected, so that this
                 * program doesn't need to be called more than once per device */
                FUNC12(dev, test, "ID_INPUT", "1");
                FUNC3(pdev, "capabilities/ev", bitmask_ev, sizeof(bitmask_ev), test);
                FUNC3(pdev, "capabilities/abs", bitmask_abs, sizeof(bitmask_abs), test);
                FUNC3(pdev, "capabilities/rel", bitmask_rel, sizeof(bitmask_rel), test);
                FUNC3(pdev, "capabilities/key", bitmask_key, sizeof(bitmask_key), test);
                FUNC3(pdev, "properties", bitmask_props, sizeof(bitmask_props), test);
                is_pointer = FUNC11(dev, bitmask_ev, bitmask_abs,
                                           bitmask_key, bitmask_rel,
                                           bitmask_props, test);
                is_key = FUNC10(dev, bitmask_ev, bitmask_key, test);
                /* Some evdev nodes have only a scrollwheel */
                if (!is_pointer && !is_key && FUNC9(EV_REL, bitmask_ev) &&
                    (FUNC9(REL_WHEEL, bitmask_rel) || FUNC9(REL_HWHEEL, bitmask_rel)))
                        FUNC12(dev, test, "ID_INPUT_KEY", "1");
                if (FUNC9(EV_SW, bitmask_ev))
                        FUNC12(dev, test, "ID_INPUT_SWITCH", "1");

        }

        if (FUNC4(dev, &devnode) >= 0 &&
            FUNC7(dev, &sysname) >= 0 &&
            FUNC8(sysname, "event"))
                FUNC2(dev, devnode, test);

        return 0;
}