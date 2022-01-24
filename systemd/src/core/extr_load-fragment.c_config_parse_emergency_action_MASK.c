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
struct TYPE_2__ {int /*<<< orphan*/ * manager; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  Manager ;
typedef  int /*<<< orphan*/  EmergencyAction ;

/* Variables and functions */
 int /*<<< orphan*/  EMERGENCY_ACTION_EXIT_FORCE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,char const*,...) ; 
 int FUNC4 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC5(
                const char* unit,
                const char *filename,
                unsigned line,
                const char *section,
                unsigned section_line,
                const char *lvalue,
                int ltype,
                const char *rvalue,
                void *data,
                void *userdata) {

        Manager *m = NULL;
        EmergencyAction *x = data;
        int r;

        FUNC2(filename);
        FUNC2(lvalue);
        FUNC2(rvalue);
        FUNC2(data);

        if (unit)
                m = ((Unit*) userdata)->manager;
        else
                m = data;

        r = FUNC4(rvalue, FUNC0(m), x);
        if (r < 0) {
                if (r == -EOPNOTSUPP && FUNC1(m)) {
                        /* Compat mode: remove for systemd 241. */

                        FUNC3(unit, LOG_INFO, filename, line, r,
                                   "%s= in user mode specified as \"%s\", using \"exit-force\" instead.",
                                   lvalue, rvalue);
                        *x = EMERGENCY_ACTION_EXIT_FORCE;
                        return 0;
                }

                if (r == -EOPNOTSUPP)
                        FUNC3(unit, LOG_ERR, filename, line, r,
                                   "%s= specified as %s mode action, ignoring: %s",
                                   lvalue, FUNC0(m) ? "user" : "system", rvalue);
                else
                        FUNC3(unit, LOG_ERR, filename, line, r,
                                   "Failed to parse %s=, ignoring: %s", lvalue, rvalue);
                return 0;
        }

        return 0;
}