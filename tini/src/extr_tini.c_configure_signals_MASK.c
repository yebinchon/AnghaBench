#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_3__ {int /*<<< orphan*/  sigttou_action_ptr; int /*<<< orphan*/  sigttin_action_ptr; int /*<<< orphan*/  sigmask_ptr; } ;
typedef  TYPE_1__ signal_configuration_t ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int SIGABRT ; 
 int SIGBUS ; 
 int SIGFPE ; 
 int SIGILL ; 
 int SIGSEGV ; 
 int SIGSYS ; 
 int SIGTRAP ; 
 int SIGTTIN ; 
 int SIGTTOU ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,struct sigaction*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(sigset_t* const parent_sigset_ptr, const signal_configuration_t* const sigconf_ptr) {
	/* Block all signals that are meant to be collected by the main loop */
	if (FUNC6(parent_sigset_ptr)) {
		FUNC1("sigfillset failed: '%s'", FUNC8(errno));
		return 1;
	}

	// These ones shouldn't be collected by the main loop
	uint i;
	int signals_for_tini[] = {SIGFPE, SIGILL, SIGSEGV, SIGBUS, SIGABRT, SIGTRAP, SIGSYS, SIGTTIN, SIGTTOU};
	for (i = 0; i < FUNC0(signals_for_tini); i++) {
		if (FUNC4(parent_sigset_ptr, signals_for_tini[i])) {
			FUNC1("sigdelset failed: '%i'", signals_for_tini[i]);
			return 1;
		}
	}

	if (FUNC7(SIG_SETMASK, parent_sigset_ptr, sigconf_ptr->sigmask_ptr)) {
		FUNC1("sigprocmask failed: '%s'", FUNC8(errno));
		return 1;
	}

	// Handle SIGTTIN and SIGTTOU separately. Since Tini makes the child process group
	// the foreground process group, there's a chance Tini can end up not controlling the tty.
	// If TOSTOP is set on the tty, this could block Tini on writing debug messages. We don't
	// want that. Ignore those signals.
	struct sigaction ign_action;
	FUNC2(&ign_action, 0, sizeof ign_action);

	ign_action.sa_handler = SIG_IGN;
	FUNC5(&ign_action.sa_mask);

	if (FUNC3(SIGTTIN, &ign_action, sigconf_ptr->sigttin_action_ptr)) {
		FUNC1("Failed to ignore SIGTTIN");
		return 1;
	}

	if (FUNC3(SIGTTOU, &ign_action, sigconf_ptr->sigttou_action_ptr)) {
		FUNC1("Failed to ignore SIGTTOU");
		return 1;
	}

	return 0;
}