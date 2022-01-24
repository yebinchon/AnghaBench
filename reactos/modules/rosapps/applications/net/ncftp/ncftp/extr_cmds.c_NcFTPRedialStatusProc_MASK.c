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
typedef  int /*<<< orphan*/ * FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int kRedialStatusDialing ; 
 int kRedialStatusSleeping ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(const FTPCIPtr cipUNUSED, int mode, int val)
{
	gUnusedArg = (cipUNUSED != NULL);
	if (mode == kRedialStatusDialing) {
		if (val > 0) {
			FUNC0("Redialing (try %d)...", val);
			FUNC1(1);	/* Give time for message to stay */
		}
	} else if (mode == kRedialStatusSleeping) {
		FUNC0("Sleeping %d seconds...", val);
	}
}