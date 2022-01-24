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

/* Variables and functions */
 scalar_t__ arg_mount_options ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char const**) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(sd_device *d) {
        const char *v;

        FUNC0(d);

        if (arg_mount_options)
                return 0;

        if (FUNC3(d, "SYSTEMD_MOUNT_OPTIONS", &v) < 0)
                return 0;

        arg_mount_options = FUNC4(v);
        if (!arg_mount_options)
                return FUNC2();

        FUNC1("Discovered options=%s", arg_mount_options);
        return 1;
}