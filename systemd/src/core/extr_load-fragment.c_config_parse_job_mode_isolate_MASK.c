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
typedef  int /*<<< orphan*/  JobMode ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_ISOLATE ; 
 int /*<<< orphan*/  JOB_REPLACE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC3 (char const*) ; 

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

        JobMode *m = data;
        int r;

        FUNC0(filename);
        FUNC0(lvalue);
        FUNC0(rvalue);

        r = FUNC3(rvalue);
        if (r < 0) {
                FUNC2(unit, LOG_ERR, filename, line, r, "Failed to parse boolean, ignoring: %s", rvalue);
                return 0;
        }

        FUNC1("%s is deprecated. Please use OnFailureJobMode= instead", lvalue);

        *m = r ? JOB_ISOLATE : JOB_REPLACE;
        return 0;
}