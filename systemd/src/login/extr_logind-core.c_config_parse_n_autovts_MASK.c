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
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC2 (char const*,unsigned int*) ; 

int FUNC3(
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

        unsigned *n = data;
        unsigned o;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        r = FUNC2(rvalue, &o);
        if (r < 0) {
                FUNC1(unit, LOG_ERR, filename, line, r, "Failed to parse number of autovts, ignoring: %s", rvalue);
                return 0;
        }

        if (o > 15) {
                FUNC1(unit, LOG_ERR, filename, line, r, "A maximum of 15 autovts are supported, ignoring: %s", rvalue);
                return 0;
        }

        *n = o;
        return 0;
}