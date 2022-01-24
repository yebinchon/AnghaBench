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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_2__ {int apparmor_profile_ignore; int /*<<< orphan*/  apparmor_profile; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int ENOEXEC ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*,char const*,char**) ; 

int FUNC6(
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
        const Unit *u = userdata;
        bool ignore;
        char *k;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        if (FUNC2(rvalue)) {
                c->apparmor_profile = FUNC4(c->apparmor_profile);
                c->apparmor_profile_ignore = false;
                return 0;
        }

        if (rvalue[0] == '-') {
                ignore = true;
                rvalue++;
        } else
                ignore = false;

        r = FUNC5(u, rvalue, &k);
        if (r < 0) {
                FUNC3(unit, LOG_ERR, filename, line, r,
                           "Failed to resolve unit specifiers in '%s'%s: %m",
                           rvalue, ignore ? ", ignoring" : "");
                return ignore ? 0 : -ENOEXEC;
        }

        FUNC1(c->apparmor_profile, k);
        c->apparmor_profile_ignore = ignore;

        return 0;
}