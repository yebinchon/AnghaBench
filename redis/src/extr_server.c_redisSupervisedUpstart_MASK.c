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
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  SIGSTOP ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(void) {
    const char *upstart_job = FUNC0("UPSTART_JOB");

    if (!upstart_job) {
        FUNC2(LL_WARNING,
                "upstart supervision requested, but UPSTART_JOB not found");
        return 0;
    }

    FUNC2(LL_NOTICE, "supervised by upstart, will stop to signal readiness");
    FUNC1(SIGSTOP);
    FUNC3("UPSTART_JOB");
    return 1;
}