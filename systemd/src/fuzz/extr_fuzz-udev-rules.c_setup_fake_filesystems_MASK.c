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
 int /*<<< orphan*/  MS_BIND ; 
 int errno ; 
 TYPE_1__* fakefss ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const char *runtime_dir) {
        for (unsigned i = 0; i < FUNC0(fakefss); i++) {
                if (FUNC2(runtime_dir, fakefss[i].target, NULL, MS_BIND, NULL) < 0) {
                        FUNC1(fakefss[i].ignore_mount_error ? LOG_DEBUG : LOG_ERR, errno, "Failed to mount %s: %m", fakefss[i].target);
                        if (!fakefss[i].ignore_mount_error)
                                return -errno;
                } else
                        fakefss[i].is_mounted = true;
        }

        return 0;
}