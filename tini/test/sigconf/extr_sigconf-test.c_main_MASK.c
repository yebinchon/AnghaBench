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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(int argc, char *argv[]) {
	// Signals to ignore
	FUNC3(SIGTTOU, SIG_IGN);  // This one should still be in SigIgn (Tini touches it to ignore it, and should restore it)
	FUNC3(SIGSEGV, SIG_IGN);  // This one should still be in SigIgn (Tini shouldn't touch it)
	FUNC3(SIGINT,  SIG_IGN);  // This one should still be in SigIgn (Tini should block it to forward it, and restore it)

	// Signals to block
	sigset_t set;
	FUNC2(&set);
	FUNC1(&set, SIGTTIN);  // This one should still be in SigIgn (Tini touches it to ignore it, and should restore it)
	FUNC1(&set, SIGILL);   // This one should still be in SigIgn (Tini shouldn't touch it)
	FUNC1(&set, SIGTERM);  // This one should still be in SigIgn (Tini should block it to forward it, and restore it)
	FUNC4(SIG_BLOCK, &set, NULL);

	// Run whatever we were asked to run
	FUNC0(argv[1], argv+1);
}