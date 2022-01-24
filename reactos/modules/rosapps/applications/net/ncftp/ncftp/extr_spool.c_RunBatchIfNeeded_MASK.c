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
typedef  int /*<<< orphan*/  FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,char*) ; 
 scalar_t__ gUnprocessedJobs ; 

void
FUNC2(const FTPCIPtr cip)
{
	if (gUnprocessedJobs > 0) {
#ifdef ncftp
		Trace(0, "Running ncftp_batch for %d job%s.\n", gUnprocessedJobs, gUnprocessedJobs > 0 ? "s" : "");
		gUnprocessedJobs = 0;
		RunBatch(1, cip);
#else
		gUnprocessedJobs = 0;
		FUNC0(0, cip);
#endif
	}
}