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
struct TYPE_2__ {int cpu_sched_set; int cpu_sched_policy; scalar_t__ cpu_sched_priority; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char const*) ; 

int FUNC7(const char *unit,
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
        int x;

        FUNC1(filename);
        FUNC1(lvalue);
        FUNC1(rvalue);
        FUNC1(data);

        if (FUNC2(rvalue)) {
                c->cpu_sched_set = false;
                c->cpu_sched_policy = SCHED_OTHER;
                c->cpu_sched_priority = 0;
                return 0;
        }

        x = FUNC6(rvalue);
        if (x < 0) {
                FUNC3(unit, LOG_ERR, filename, line, 0, "Failed to parse CPU scheduling policy, ignoring: %s", rvalue);
                return 0;
        }

        c->cpu_sched_policy = x;
        /* Moving to or from real-time policy? We need to adjust the priority */
        c->cpu_sched_priority = FUNC0(c->cpu_sched_priority, FUNC5(x), FUNC4(x));
        c->cpu_sched_set = true;

        return 0;
}