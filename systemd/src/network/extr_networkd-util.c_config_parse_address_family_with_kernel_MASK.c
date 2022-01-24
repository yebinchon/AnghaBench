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
 scalar_t__ ADDRESS_FAMILY_NO ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

int FUNC4(
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

        AddressFamily *fwd = data, s;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        /* This function is mostly obsolete now. It simply redirects
         * "kernel" to "no". In older networkd versions we used to
         * distinguish IPForward=off from IPForward=kernel, where the
         * former would explicitly turn off forwarding while the
         * latter would simply not touch the setting. But that logic
         * is gone, hence silently accept the old setting, but turn it
         * to "no". */

        s = FUNC0(rvalue);
        if (s < 0) {
                if (FUNC3(rvalue, "kernel"))
                        s = ADDRESS_FAMILY_NO;
                else {
                        FUNC2(unit, LOG_ERR, filename, line, 0, "Failed to parse IPForward= option, ignoring: %s", rvalue);
                        return 0;
                }
        }

        *fwd = s;

        return 0;
}