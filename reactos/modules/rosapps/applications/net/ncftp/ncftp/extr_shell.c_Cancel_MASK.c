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
 int /*<<< orphan*/  gCancelJmp ; 
 int gGotSig ; 
 scalar_t__ gMayCancelJmp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2(int sigNum)
{
	if (gMayCancelJmp != 0) {
		gGotSig = sigNum;
		gMayCancelJmp = 0;
#ifdef HAVE_SIGSETJMP
		siglongjmp(gCancelJmp, 1);
#else	/* HAVE_SIGSETJMP */
		FUNC0(gCancelJmp, 1);
#endif	/* HAVE_SIGSETJMP */
	}
}