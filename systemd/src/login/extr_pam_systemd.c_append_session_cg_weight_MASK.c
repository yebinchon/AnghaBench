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
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char const* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(pam_handle_t *handle, sd_bus_message *m, const char *limit, const char *field) {
        uint64_t val;
        int r;

        if (FUNC1(limit))
                return 0;

        r = FUNC0(limit, &val);
        if (r >= 0) {
                r = FUNC3(m, "(sv)", field, "t", val);
                if (r < 0) {
                        FUNC2(handle, LOG_ERR, "Failed to append to bus message: %s", FUNC5(r));
                        return r;
                }
        } else if (FUNC4(field, "CPUWeight"))
                FUNC2(handle, LOG_WARNING, "Failed to parse systemd.cpu_weight: %s, ignoring.", limit);
        else
                FUNC2(handle, LOG_WARNING, "Failed to parse systemd.io_weight: %s, ignoring.", limit);

        return 0;
}