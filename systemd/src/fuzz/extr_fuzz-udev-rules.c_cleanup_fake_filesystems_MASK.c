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
struct TYPE_3__ {int is_mounted; scalar_t__ ignore_mount_error; int /*<<< orphan*/  target; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int errno ; 
 TYPE_1__* fakefss ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *runtime_dir) {
        for (unsigned i = 0; i < FUNC0(fakefss); i++) {
                if (!fakefss[i].is_mounted)
                        continue;

                if (FUNC2(fakefss[i].target) < 0) {
                        FUNC1(fakefss[i].ignore_mount_error ? LOG_DEBUG : LOG_ERR, errno, "Failed to umount %s: %m", fakefss[i].target);
                        if (!fakefss[i].ignore_mount_error)
                                return -errno;
                } else
                        fakefss[i].is_mounted = false;
        }
        return 0;
}