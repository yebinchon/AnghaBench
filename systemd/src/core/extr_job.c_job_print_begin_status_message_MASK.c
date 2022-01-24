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
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  JobType ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE_WARNING_FORMAT_NONLITERAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB_START ; 
 int /*<<< orphan*/  JOB_STOP ; 
 int /*<<< orphan*/  REENABLE_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC4(Unit *u, JobType t) {
        const char *format;

        FUNC1(u);

        /* Reload status messages have traditionally not been printed to console. */
        if (!FUNC0(t, JOB_START, JOB_STOP))
                return;

        format = FUNC2(u, t);

        DISABLE_WARNING_FORMAT_NONLITERAL;
        FUNC3(u, "", format);
        REENABLE_WARNING;
}