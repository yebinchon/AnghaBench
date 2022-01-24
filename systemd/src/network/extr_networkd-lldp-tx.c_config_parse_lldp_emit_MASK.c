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
typedef  int /*<<< orphan*/  LLDPEmit ;

/* Variables and functions */
 int /*<<< orphan*/  LLDP_EMIT_CUSTOMER_BRIDGE ; 
 int /*<<< orphan*/  LLDP_EMIT_NEAREST_BRIDGE ; 
 int /*<<< orphan*/  LLDP_EMIT_NO ; 
 int /*<<< orphan*/  LLDP_EMIT_NON_TPMR_BRIDGE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        LLDPEmit *emit = data;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);

        if (FUNC1(rvalue))
                *emit = LLDP_EMIT_NO;
        else if (FUNC4(rvalue, "nearest-bridge"))
                *emit = LLDP_EMIT_NEAREST_BRIDGE;
        else if (FUNC4(rvalue, "non-tpmr-bridge"))
                *emit = LLDP_EMIT_NON_TPMR_BRIDGE;
        else if (FUNC4(rvalue, "customer-bridge"))
                *emit = LLDP_EMIT_CUSTOMER_BRIDGE;
        else {
                r = FUNC3(rvalue);
                if (r < 0) {
                        FUNC2(unit, LOG_ERR, filename, line, 0, "Failed to parse LLDP emission setting, ignoring: %s", rvalue);
                        return 0;
                }

                *emit = r ? LLDP_EMIT_NEAREST_BRIDGE : LLDP_EMIT_NO;
        }

        return 0;
}