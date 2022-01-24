#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  UdevRules ;
struct TYPE_4__ {int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ UdevEvent ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
                UdevEvent *event,
                usec_t timeout_usec,
                Hashmap *properties_list,
                UdevRules *rules) {

        sd_device *dev = event->dev;
        int r;

        r = FUNC1(dev, true);
        if (r < 0)
                FUNC3(dev, r, "Failed to read database under /run/udev/data/: %m");

        r = FUNC2(dev, NULL, false);
        if (r < 0)
                FUNC3(dev, r, "Failed to remove corresponding tag files under /run/udev/tag/, ignoring: %m");

        r = FUNC0(dev);
        if (r < 0)
                FUNC3(dev, r, "Failed to delete database under /run/udev/data/, ignoring: %m");

        if (FUNC4(dev, NULL) >= 0)
                (void) FUNC7(dev);

        (void) FUNC6(rules, event, timeout_usec, properties_list);

        if (FUNC4(dev, NULL) >= 0)
                (void) FUNC5(dev);
}