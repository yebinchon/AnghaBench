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
 int /*<<< orphan*/  KILL_PROCESS_GROUP_GROUP_ENV_VAR ; 
 int /*<<< orphan*/  SUBREAPER_ENV_VAR ; 
 int /*<<< orphan*/  VERBOSITY_ENV_VAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kill_process_group ; 
 int /*<<< orphan*/  subreaper ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC2() {
#if HAS_SUBREAPER
	if (getenv(SUBREAPER_ENV_VAR) != NULL) {
		subreaper++;
	}
#endif

	if (FUNC1(KILL_PROCESS_GROUP_GROUP_ENV_VAR) != NULL) {
		kill_process_group++;
	}

	char* env_verbosity = FUNC1(VERBOSITY_ENV_VAR);
	if (env_verbosity != NULL) {
		verbosity = FUNC0(env_verbosity);
	}

	return 0;
}