#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  reader_pid; } ;
typedef  int /*<<< orphan*/  MessageQueue ;

/* Variables and functions */
 int /*<<< orphan*/  AddinShmemInitLock ; 
 int /*<<< orphan*/  BGW_MQ_NAME ; 
 int /*<<< orphan*/  BGW_MQ_TRANCHE_NAME ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidPid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* mq ; 

__attribute__((used)) static void
FUNC6()
{
	bool found;

	FUNC1(AddinShmemInitLock, LW_EXCLUSIVE);
	mq = FUNC3(BGW_MQ_NAME, sizeof(MessageQueue), &found);
	if (!found)
	{
		FUNC5(mq, 0, sizeof(MessageQueue));
		mq->reader_pid = InvalidPid;
		FUNC4(&mq->mutex);
		mq->lock = &(FUNC0(BGW_MQ_TRANCHE_NAME))->lock;
	}
	FUNC2(AddinShmemInitLock);
}