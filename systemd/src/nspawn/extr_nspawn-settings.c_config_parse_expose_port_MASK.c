#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  expose_ports; } ;
typedef  TYPE_1__ Settings ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 

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

        Settings *s = data;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);

        r = FUNC1(&s->expose_ports, rvalue);
        if (r == -EEXIST) {
                FUNC2(unit, LOG_ERR, filename, line, r, "Duplicate port specification, ignoring: %s", rvalue);
                return 0;
        }
        if (r < 0) {
                FUNC2(unit, LOG_ERR, filename, line, r, "Failed to parse host port %s: %m", rvalue);
                return 0;
        }

        return 0;
}