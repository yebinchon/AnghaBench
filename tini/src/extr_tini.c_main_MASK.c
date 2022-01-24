#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {struct sigaction* sigttou_action_ptr; struct sigaction* sigttin_action_ptr; int /*<<< orphan*/ * sigmask_ptr; } ;
typedef  TYPE_1__ signal_configuration_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PR_SET_PDEATHSIG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char***) ; 
 int /*<<< orphan*/  FUNC4 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ parent_death_signal ; 
 int FUNC5 (int,char**,char****,int*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (TYPE_1__*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC13(int argc, char *argv[]) {
	pid_t child_pid;

	// Those are passed to functions to get an exitcode back.
	int child_exitcode = -1;  // This isn't a valid exitcode, and lets us tell whether the child has exited.
	int parse_exitcode = 1;   // By default, we exit with 1 if parsing fails.

	/* Parse command line arguments */
	char* (*child_args_ptr)[];
	int parse_args_ret = FUNC5(argc, argv, &child_args_ptr, &parse_exitcode);
	if (parse_args_ret) {
		return parse_exitcode;
	}

	/* Parse environment */
	if (FUNC6()) {
		return 1;
	}

	/* Configure signals */
	sigset_t parent_sigset, child_sigset;
	struct sigaction sigttin_action, sigttou_action;
	FUNC4(&sigttin_action, 0, sizeof sigttin_action);
	FUNC4(&sigttou_action, 0, sizeof sigttou_action);

	signal_configuration_t child_sigconf = {
		.sigmask_ptr = &child_sigset,
		.sigttin_action_ptr = &sigttin_action,
		.sigttou_action_ptr = &sigttou_action,
	};

	if (FUNC2(&parent_sigset, &child_sigconf)) {
		return 1;
	}

	/* Trigger signal on this process when the parent process exits. */
	if (parent_death_signal && FUNC7(PR_SET_PDEATHSIG, parent_death_signal)) {
		FUNC0("Failed to set up parent death signal");
		return 1;
	 }

#if HAS_SUBREAPER
	/* If available and requested, register as a subreaper */
	if (register_subreaper()) {
		return 1;
	};
#endif

	/* Are we going to reap zombies properly? If not, warn. */
	FUNC9();

	/* Go on */
	int spawn_ret = FUNC11(&child_sigconf, *child_args_ptr, &child_pid);
	if (spawn_ret) {
		return spawn_ret;
	}
	FUNC3(child_args_ptr);

	while (1) {
		/* Wait for one signal, and forward it */
		if (FUNC12(&parent_sigset, child_pid)) {
			return 1;
		}

		/* Now, reap zombies */
		if (FUNC8(child_pid, &child_exitcode)) {
			return 1;
		}

		if (child_exitcode != -1) {
			FUNC1("Exiting: child has exited");
			return child_exitcode;
		}
	}
}