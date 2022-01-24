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
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 

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

        Manager *m = userdata;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);

        if (FUNC1(rvalue))
                FUNC3(m, ltype);
        else {
                r = FUNC4(m, ltype, rvalue);
                if (r < 0) {
                        FUNC2(unit, LOG_ERR, filename, line, r, "Failed to parse NTP server string '%s'. Ignoring.", rvalue);
                        return 0;
                }
        }

        return 0;
}