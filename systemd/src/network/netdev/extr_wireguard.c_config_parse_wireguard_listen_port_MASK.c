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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC3 (char const*,scalar_t__*) ; 
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

        uint16_t *s = data;
        int r;

        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC1(rvalue) || FUNC4(rvalue, "auto")) {
                *s = 0;
                return 0;
        }

        r = FUNC3(rvalue, s);
        if (r < 0) {
                FUNC2(unit, LOG_ERR, filename, line, r,
                           "Invalid port specification, ignoring assignment: %s", rvalue);
                return 0;
        }

        return 0;
}