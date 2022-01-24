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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ CAP_ALL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

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

        uint64_t *capability_set = data;
        uint64_t sum = 0, initial = 0;
        bool invert = false;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (rvalue[0] == '~') {
                invert = true;
                rvalue++;
        }

        if (FUNC3(lvalue, "CapabilityBoundingSet"))
                initial = CAP_ALL; /* initialized to all bits on */
        /* else "AmbientCapabilities" initialized to all bits off */

        r = FUNC1(rvalue, &sum);
        if (r < 0) {
                FUNC2(unit, LOG_ERR, filename, line, r, "Failed to parse %s= specifier '%s', ignoring: %m", lvalue, rvalue);
                return 0;
        }

        if (sum == 0 || *capability_set == initial)
                /* "", "~" or uninitialized data -> replace */
                *capability_set = invert ? ~sum : sum;
        else {
                /* previous data -> merge */
                if (invert)
                        *capability_set &= ~sum;
                else
                        *capability_set |= sum;
        }

        return 0;
}