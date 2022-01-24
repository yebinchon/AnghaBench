#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_13__ {scalar_t__ dev_db_clone; int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ UdevRules ;
typedef  TYPE_1__ UdevEvent ;
typedef  int /*<<< orphan*/  Hashmap ;
typedef  scalar_t__ DeviceAction ;

/* Variables and functions */
 scalar_t__ DEVICE_ACTION_MOVE ; 
 scalar_t__ DEVICE_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 (TYPE_1__*) ; 

int FUNC18(UdevEvent *event,
                             usec_t timeout_usec,
                             Hashmap *properties_list,
                             UdevRules *rules) {
        const char *subsystem;
        DeviceAction action;
        sd_device *dev;
        int r;

        FUNC0(event);
        FUNC0(rules);

        dev = event->dev;

        r = FUNC12(dev, &subsystem);
        if (r < 0)
                return FUNC9(dev, r, "Failed to get subsystem: %m");

        r = FUNC3(dev, &action);
        if (r < 0)
                return FUNC9(dev, r, "Failed to get ACTION: %m");

        if (action == DEVICE_ACTION_REMOVE) {
                FUNC7(event, timeout_usec, properties_list, rules);
                return 0;
        }

        r = FUNC1(dev, &event->dev_db_clone);
        if (r < 0)
                return FUNC8(dev, r, "Failed to clone sd_device object: %m");

        if (event->dev_db_clone && FUNC11(dev, NULL) >= 0)
                /* Disable watch during event processing. */
                (void) FUNC16(event->dev_db_clone);

        if (action == DEVICE_ACTION_MOVE) {
                r = FUNC14(event);
                if (r < 0)
                        return r;
        }

        r = FUNC15(rules, event, timeout_usec, properties_list);
        if (r < 0)
                return FUNC8(dev, r, "Failed to apply udev rules: %m");

        r = FUNC10(event);
        if (r < 0)
                return r;

        r = FUNC17(event);
        if (r < 0)
                return r;

        /* preserve old, or get new initialization timestamp */
        r = FUNC2(dev, event->dev_db_clone);
        if (r < 0)
                return FUNC8(dev, r, "Failed to set initialization timestamp: %m");

        /* (re)write database file */
        r = FUNC5(dev, event->dev_db_clone, true);
        if (r < 0)
                return FUNC8(dev, r, "Failed to update tags under /run/udev/tag/: %m");

        r = FUNC6(dev);
        if (r < 0)
                return FUNC8(dev, r, "Failed to update database under /run/udev/data/: %m");

        FUNC4(dev);

        event->dev_db_clone = FUNC13(event->dev_db_clone);

        return 0;
}