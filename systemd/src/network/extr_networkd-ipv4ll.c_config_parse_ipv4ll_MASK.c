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
typedef  int /*<<< orphan*/  AddressFamily ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_FAMILY_IPV4 ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,char const*,char const*) ; 
 int FUNC4 (char const*) ; 

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

        AddressFamily *link_local = data;
        int r;

        FUNC2(filename);
        FUNC2(lvalue);
        FUNC2(rvalue);
        FUNC2(data);

        /* Note that this is mostly like
         * config_parse_address_family(), except that it
         * applies only to IPv4 */

        r = FUNC4(rvalue);
        if (r < 0) {
                FUNC3(unit, LOG_ERR, filename, line, r,
                           "Failed to parse %s=%s, ignoring assignment. "
                           "Note that the setting %s= is deprecated, please use LinkLocalAddressing= instead.",
                           lvalue, rvalue, lvalue);
                return 0;
        }

        FUNC0(*link_local, ADDRESS_FAMILY_IPV4, r);

        FUNC3(unit, LOG_WARNING, filename, line, 0,
                   "%s=%s is deprecated, please use LinkLocalAddressing=%s instead.",
                   lvalue, rvalue, FUNC1(*link_local));

        return 0;
}