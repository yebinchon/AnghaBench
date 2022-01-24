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
struct TYPE_3__ {int /*<<< orphan*/  sigttou_action_ptr; int /*<<< orphan*/  sigttin_action_ptr; int /*<<< orphan*/  sigmask_ptr; } ;
typedef  TYPE_1__ signal_configuration_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const signal_configuration_t* const sigconf_ptr) {
	if (FUNC2(SIG_SETMASK, sigconf_ptr->sigmask_ptr, NULL)) {
		FUNC0("Restoring child signal mask failed: '%s'", FUNC3(errno));
		return 1;
	}

	if (FUNC1(SIGTTIN, sigconf_ptr->sigttin_action_ptr, NULL)) {
		FUNC0("Restoring SIGTTIN handler failed: '%s'", FUNC3((errno)));
		return 1;
	}

	if (FUNC1(SIGTTOU, sigconf_ptr->sigttou_action_ptr, NULL)) {
		FUNC0("Restoring SIGTTOU handler failed: '%s'", FUNC3((errno)));
		return 1;
	}

	return 0;
}