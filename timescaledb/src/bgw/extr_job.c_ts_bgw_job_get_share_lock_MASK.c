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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  RowShareLock ; 
 int /*<<< orphan*/  TXN_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool
FUNC2(int32 bgw_job_id, MemoryContext mctx)
{
	/* note the mode here is equivalent to FOR SHARE row locks */
	BgwJob *job = FUNC1(bgw_job_id, mctx, RowShareLock, TXN_LOCK, true);
	if (job != NULL)
	{
		FUNC0(job);
		return true;
	}
	return false;
}