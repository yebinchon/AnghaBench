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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char const* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(pam_handle_t *handle, sd_bus_message *m, const char *limit) {
        uint64_t val;
        int r;

        /* No need to parse "infinity" here, it will be set unconditionally later in manager_start_scope() */
        if (FUNC0(limit) || FUNC4(limit, "infinity"))
                return 0;

        r = FUNC2(limit, &val);
        if (r >= 0) {
                r = FUNC3(m, "(sv)", "TasksMax", "t", val);
                if (r < 0) {
                        FUNC1(handle, LOG_ERR, "Failed to append to bus message: %s", FUNC5(r));
                        return r;
                }
        } else
                FUNC1(handle, LOG_WARNING, "Failed to parse systemd.tasks_max: %s, ignoring.", limit);

        return 0;
}