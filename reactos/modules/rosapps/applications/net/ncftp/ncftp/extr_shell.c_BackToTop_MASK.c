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
 int SIGINT ; 
 int SIGPIPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gBackToTopJmp ; 
 int gDoneApplication ; 
 int gGotSig ; 
 scalar_t__ gMayBackToTopJmp ; 
 int gRunningCommand ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC5(int sigNum)
{
	gGotSig = sigNum;
	if (sigNum == SIGPIPE) {
		if (gRunningCommand == 1) {
			(void) FUNC2(stderr, "Unexpected broken pipe.\n");
			gRunningCommand = 0;
		} else {
			FUNC0("RESTORE");
			FUNC1(1);
		}
	} else if (sigNum == SIGINT) {
		if (gRunningCommand == 0)
			gDoneApplication = 1;
	}
	if (gMayBackToTopJmp > 0) {
#ifdef HAVE_SIGSETJMP
		siglongjmp(gBackToTopJmp, 1);
#else	/* HAVE_SIGSETJMP */
		FUNC3(gBackToTopJmp, 1);
#endif	/* HAVE_SIGSETJMP */
	}
}