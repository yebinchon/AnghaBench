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

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC6 (char*) ; 

int FUNC7(
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

        char **s = data;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC3(rvalue)) {
                *s = FUNC6(*s);
                return 0;
        }

        if (!FUNC2(rvalue)) {
                FUNC5(unit, LOG_ERR, filename, line, 0, "Interface name is not valid or too long, ignoring assignment: %s", rvalue);
                return 0;
        }

        r = FUNC1(s, rvalue);
        if (r < 0)
                return FUNC4();

        return 0;
}