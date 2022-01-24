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
 int LOG_FACMASK ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 

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

        int *o = data, x;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        x = FUNC1(rvalue);
        if (x < 0) {
                FUNC2(unit, LOG_ERR, filename, line, 0, "Failed to parse log level, ignoring: %s", rvalue);
                return 0;
        }

        if (*o < 0) /* if it wasn't initialized so far, assume zero facility */
                *o = x;
        else
                *o = (*o & LOG_FACMASK) | x;

        return 0;
}