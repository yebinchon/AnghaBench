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
struct TYPE_2__ {int nice_set; int nice; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC3 (char const*,int*) ; 

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

        ExecContext *c = data;
        int priority, r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC1(rvalue)) {
                c->nice_set = false;
                return 0;
        }

        r = FUNC3(rvalue, &priority);
        if (r < 0) {
                if (r == -ERANGE)
                        FUNC2(unit, LOG_ERR, filename, line, r, "Nice priority out of range, ignoring: %s", rvalue);
                else
                        FUNC2(unit, LOG_ERR, filename, line, r, "Failed to parse nice priority '%s', ignoring: %m", rvalue);
                return 0;
        }

        c->nice = priority;
        c->nice_set = true;

        return 0;
}