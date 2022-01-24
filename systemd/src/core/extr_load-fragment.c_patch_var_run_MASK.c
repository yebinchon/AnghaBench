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
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 char* FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(
                const char *unit,
                const char *filename,
                unsigned line,
                const char *lvalue,
                char **path) {

        const char *e;
        char *z;

        e = FUNC4(*path, "/var/run/");
        if (!e)
                return 0;

        z = FUNC3("/run/", e);
        if (!z)
                return FUNC1();

        FUNC2(unit, LOG_NOTICE, filename, line, 0,
                   "%s= references a path below legacy directory /var/run/, updating %s → %s; "
                   "please update the unit file accordingly.", lvalue, *path, z);

        FUNC0(*path, z);

        return 1;
}