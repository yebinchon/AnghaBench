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
 int ENXIO ; 
 int /*<<< orphan*/  SETTING_CLONE_NS_FLAGS ; 
 unsigned long arg_clone_ns_flags ; 
 int /*<<< orphan*/  arg_settings_mask ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (int,char*,char const*) ; 

__attribute__((used)) static int FUNC2(const char *name, unsigned long ns_flag) {
        int r;

        r = FUNC0(name);
        if (r == -ENXIO)
                return 0;
        if (r < 0)
                return FUNC1(r, "Failed to parse $%s: %m", name);

        arg_clone_ns_flags = (arg_clone_ns_flags & ~ns_flag) | (r > 0 ? 0 : ns_flag);
        arg_settings_mask |= SETTING_CLONE_NS_FLAGS;
        return 0;
}