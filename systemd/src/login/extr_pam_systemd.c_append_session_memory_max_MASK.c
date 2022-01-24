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
typedef  unsigned int uint64_t ;
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 unsigned int UINT32_MAX ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,int,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,char*,unsigned int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 char const* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(pam_handle_t *handle, sd_bus_message *m, const char *limit) {
        uint64_t val;
        int r;

        if (FUNC0(limit))
                return 0;

        if (FUNC5(limit, "infinity")) {
                r = FUNC4(m, "(sv)", "MemoryMax", "t", (uint64_t)-1);
                if (r < 0) {
                        FUNC1(handle, LOG_ERR, "Failed to append to bus message: %s", FUNC6(r));
                        return r;
                }
        } else {
                r = FUNC2(limit);
                if (r >= 0) {
                        r = FUNC4(m, "(sv)", "MemoryMaxScale", "u", (uint32_t) (((uint64_t) r * UINT32_MAX) / 1000U));
                        if (r < 0) {
                                FUNC1(handle, LOG_ERR, "Failed to append to bus message: %s", FUNC6(r));
                                return r;
                        }
                } else {
                        r = FUNC3(limit, 1024, &val);
                        if (r >= 0) {
                                r = FUNC4(m, "(sv)", "MemoryMax", "t", val);
                                if (r < 0) {
                                        FUNC1(handle, LOG_ERR, "Failed to append to bus message: %s", FUNC6(r));
                                        return r;
                                }
                        } else
                                FUNC1(handle, LOG_WARNING, "Failed to parse systemd.memory_max: %s, ignoring.", limit);
                }
        }

        return 0;
}