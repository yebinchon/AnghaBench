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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int*,int) ; 

int FUNC2(bool *changed, int umount_log_level) {
        bool umount_changed;
        int r;

        FUNC0(changed);

        /* Retry umount, until nothing can be umounted anymore. Mounts are
         * processed in order, newest first. The retries are needed when
         * an old mount has been moved, to a path inside a newer mount. */
        do {
                umount_changed = false;

                r = FUNC1(&umount_changed, umount_log_level);
                if (umount_changed)
                        *changed = true;
        } while (umount_changed);

        return r;
}