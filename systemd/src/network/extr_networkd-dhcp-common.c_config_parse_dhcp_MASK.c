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
typedef  scalar_t__ AddressFamily ;

/* Variables and functions */
 scalar_t__ ADDRESS_FAMILY_IPV4 ; 
 scalar_t__ ADDRESS_FAMILY_IPV6 ; 
 scalar_t__ ADDRESS_FAMILY_NO ; 
 scalar_t__ ADDRESS_FAMILY_YES ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,...) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        AddressFamily *dhcp = data, s;

        FUNC2(filename);
        FUNC2(lvalue);
        FUNC2(rvalue);
        FUNC2(data);

        /* Note that this is mostly like
         * config_parse_address_family(), except that it
         * understands some old names for the enum values */

        s = FUNC0(rvalue);
        if (s < 0) {

                /* Previously, we had a slightly different enum here,
                 * support its values for compatibility. */

                if (FUNC4(rvalue, "none"))
                        s = ADDRESS_FAMILY_NO;
                else if (FUNC4(rvalue, "v4"))
                        s = ADDRESS_FAMILY_IPV4;
                else if (FUNC4(rvalue, "v6"))
                        s = ADDRESS_FAMILY_IPV6;
                else if (FUNC4(rvalue, "both"))
                        s = ADDRESS_FAMILY_YES;
                else {
                        FUNC3(unit, LOG_ERR, filename, line, 0,
                                   "Failed to parse DHCP option, ignoring: %s", rvalue);
                        return 0;
                }

                FUNC3(unit, LOG_WARNING, filename, line, 0,
                           "DHCP=%s is deprecated, please use DHCP=%s instead.",
                           rvalue, FUNC1(s));
        }

        *dhcp = s;
        return 0;
}