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
typedef  scalar_t__ NetDevKind ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ _NETDEV_KIND_INVALID ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int FUNC4(
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

        NetDevKind k, *kind = data;

        FUNC0(rvalue);
        FUNC0(data);

        k = FUNC2(rvalue);
        if (k < 0) {
                FUNC1(unit, LOG_ERR, filename, line, 0, "Failed to parse netdev kind, ignoring assignment: %s", rvalue);
                return 0;
        }

        if (*kind != _NETDEV_KIND_INVALID && *kind != k) {
                FUNC1(unit, LOG_ERR, filename, line, 0,
                           "Specified netdev kind is different from the previous value '%s', ignoring assignment: %s",
                           FUNC3(*kind), rvalue);
                return 0;
        }

        *kind = k;

        return 0;
}