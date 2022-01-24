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
typedef  int uint8_t ;

/* Variables and functions */
 int IPPROTO_MAX ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int UINT8_MAX ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,int*) ; 

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

        uint8_t *protocol = data;
        int r;

        FUNC0(filename);
        FUNC0(section);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        FUNC1(IPPROTO_MAX-1 <= UINT8_MAX);

        r = FUNC3(rvalue);
        if (r < 0) {
                r = FUNC4(rvalue, protocol);
                if (r < 0)
                        FUNC2(unit, LOG_ERR, filename, line, r,
                                   "Failed to parse IP protocol '%s' for Foo over UDP tunnel, "
                                   "ignoring assignment: %m", rvalue);
                return 0;
        }

        *protocol = r;
        return 0;
}