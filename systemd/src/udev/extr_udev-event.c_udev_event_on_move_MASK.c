#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_3__ {int /*<<< orphan*/  dev_db_clone; int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ UdevEvent ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(UdevEvent *event) {
        sd_device *dev = event->dev;
        int r;

        if (event->dev_db_clone &&
            FUNC3(dev, NULL) < 0) {
                r = FUNC1(dev, event->dev_db_clone);
                if (r < 0)
                        FUNC2(dev, r, "Failed to copy properties from cloned sd_device object, ignoring: %m");
        }

        /* Drop previously added property */
        r = FUNC0(dev, "ID_RENAMING", NULL);
        if (r < 0)
                return FUNC2(dev, r, "Failed to remove 'ID_RENAMING' property: %m");

        return 0;
}