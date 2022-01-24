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
struct TYPE_3__ {int mode; int /*<<< orphan*/  seclabel_list; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  dev_db_clone; int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ UdevEvent ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ACTION_ADD ; 
 int ENOENT ; 
 int MODE_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(UdevEvent *event) {
        sd_device *dev = event->dev;
        int r;

        r = FUNC6(dev, NULL);
        if (r == -ENOENT)
                return 0;
        if (r < 0)
                return FUNC5(dev, r, "Failed to get devnum: %m");

        /* remove/update possible left-over symlinks from old database entry */
        if (event->dev_db_clone)
                (void) FUNC8(dev, event->dev_db_clone);

        if (!FUNC9(event->uid)) {
                r = FUNC3(dev, &event->uid);
                if (r < 0 && r != -ENOENT)
                        return FUNC5(dev, r, "Failed to get devnode UID: %m");
        }

        if (!FUNC4(event->gid)) {
                r = FUNC1(dev, &event->gid);
                if (r < 0 && r != -ENOENT)
                        return FUNC5(dev, r, "Failed to get devnode GID: %m");
        }

        if (event->mode == MODE_INVALID) {
                r = FUNC2(dev, &event->mode);
                if (r < 0 && r != -ENOENT)
                        return FUNC5(dev, r, "Failed to get devnode mode: %m");
        }
        if (event->mode == MODE_INVALID && FUNC4(event->gid) && event->gid > 0)
                /* If group is set, but mode is not set, "upgrade" mode for the group. */
                event->mode = 0660;

        bool apply_mac = FUNC0(dev, DEVICE_ACTION_ADD);

        return FUNC7(dev, apply_mac, event->mode, event->uid, event->gid, event->seclabel_list);
}