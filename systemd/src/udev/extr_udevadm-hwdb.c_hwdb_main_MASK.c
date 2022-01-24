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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_hwdb_bin_dir ; 
 int /*<<< orphan*/  arg_root ; 
 int /*<<< orphan*/  arg_strict ; 
 scalar_t__ arg_test ; 
 scalar_t__ arg_update ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char**) ; 

int FUNC5(int argc, char *argv[], void *userdata) {
        int r;

        r = FUNC4(argc, argv);
        if (r <= 0)
                return r;

        if (!arg_update && !arg_test)
                return FUNC3(FUNC0(EINVAL),
                                       "Either --update or --test must be used.");

        if (arg_update) {
                r = FUNC2(arg_root, arg_hwdb_bin_dir, arg_strict, true);
                if (r < 0)
                        return r;
        }

        if (arg_test)
                return FUNC1(arg_test);

        return 0;
}