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
 int IPTOS_CLASS_CS4 ; 
 int IPTOS_CLASS_CS6 ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

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

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);

        if (FUNC2(rvalue, "CS4"))
                *((int *)data) = IPTOS_CLASS_CS4;
        else if (FUNC2(rvalue, "CS6"))
                *((int *)data) = IPTOS_CLASS_CS6;
        else
                FUNC1(unit, LOG_WARNING, filename, line, 0,
                           "Failed to parse IPServiceType type '%s', ignoring.", rvalue);

        return 0;
}