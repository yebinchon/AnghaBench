#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  backendId; } ;
typedef  TYPE_1__ VirtualTransactionId ;
struct TYPE_7__ {int /*<<< orphan*/  pid; scalar_t__ isBackgroundWorker; } ;
typedef  TYPE_2__ PGPROC ;
typedef  int /*<<< orphan*/  LOCKTAG ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pg_cancel_backend ; 

__attribute__((used)) static void
FUNC8(int32 job_id)
{
	LOCKTAG tag;
	bool got_lock;

	/* Try getting an exclusive lock on the tuple in a non-blocking manner. Note this is the
	 * equivalent of a row-based FOR UPDATE lock */
	got_lock = FUNC7(job_id,
						AccessExclusiveLock,
						/* session_lock */ false,
						&tag,
						/* block */ false);
	if (!got_lock)
	{
		/* If I couldn't get a lock, try killing the background worker that's running the job.
		 * This is probably not bulletproof but best-effort is good enough here. */
		VirtualTransactionId *vxid = FUNC3(&tag, AccessExclusiveLock);
		PGPROC *proc;

		if (FUNC5(*vxid))
		{
			proc = FUNC1(vxid->backendId);
			if (proc != NULL && proc->isBackgroundWorker)
			{
				FUNC6(NOTICE,
					 "cancelling the background worker for job %d (pid %d)",
					 job_id,
					 proc->pid);
				FUNC2(pg_cancel_backend, FUNC4(proc->pid));
			}
		}

		/* We have to grab this lock before proceeding so grab it in a blocking manner now */
		got_lock = FUNC7(job_id,
							AccessExclusiveLock,
							/* session lock */ false,
							&tag,
							/* block */ true);
	}
	FUNC0(got_lock);
}