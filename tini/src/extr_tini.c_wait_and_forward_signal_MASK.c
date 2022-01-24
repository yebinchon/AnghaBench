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
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_3__ {int si_signo; } ;
typedef  TYPE_1__ siginfo_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
#define  EAGAIN 130 
#define  EINTR 129 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
#define  SIGCHLD 128 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  kill_process_group ; 
 int FUNC4 (int /*<<< orphan*/  const* const,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ts ; 

int FUNC7(sigset_t const* const parent_sigset_ptr, pid_t const child_pid) {
	siginfo_t sig;

	if (FUNC4(parent_sigset_ptr, &sig, &ts) == -1) {
		switch (errno) {
			case EAGAIN:
				break;
			case EINTR:
				break;
			default:
				FUNC1("Unexpected error in sigtimedwait: '%s'", FUNC5(errno));
				return 1;
		}
	} else {
		/* There is a signal to handle here */
		switch (sig.si_signo) {
			case SIGCHLD:
				/* Special-cased, as we don't forward SIGCHLD. Instead, we'll
				 * fallthrough to reaping processes.
				 */
				FUNC0("Received SIGCHLD");
				break;
			default:
				FUNC0("Passing signal: '%s'", FUNC6(sig.si_signo));
				/* Forward anything else */
				if (FUNC3(kill_process_group ? -child_pid : child_pid, sig.si_signo)) {
					if (errno == ESRCH) {
						FUNC2("Child was dead when forwarding signal");
					} else {
						FUNC1("Unexpected error when forwarding signal: '%s'", FUNC5(errno));
						return 1;
					}
				}
				break;
		}
	}

	return 0;
}