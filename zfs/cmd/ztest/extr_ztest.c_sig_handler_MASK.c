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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int BACKTRACE_SZ ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(int signo)
{
	struct sigaction action;
#ifdef __GLIBC__ /* backtrace() is a GNU extension */
	int nptrs;
	void *buffer[BACKTRACE_SZ];

	nptrs = backtrace(buffer, BACKTRACE_SZ);
	backtrace_symbols_fd(buffer, nptrs, STDERR_FILENO);
#endif
	FUNC2();

	/*
	 * Restore default action and re-raise signal so SIGSEGV and
	 * SIGABRT can trigger a core dump.
	 */
	action.sa_handler = SIG_DFL;
	FUNC5(&action.sa_mask);
	action.sa_flags = 0;
	(void) FUNC4(signo, &action, NULL);
	FUNC3(signo);
}