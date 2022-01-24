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
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {scalar_t__ reader_pid; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ MessageQueue ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidPid ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(MessageQueue *queue)
{
	volatile MessageQueue *vq = queue;
	pid_t reader_pid;

	FUNC0(&vq->mutex);
	if (vq->reader_pid == InvalidPid)
	{
		vq->reader_pid = MyProcPid;
	}
	reader_pid = vq->reader_pid;
	FUNC1(&vq->mutex);
	if (reader_pid != MyProcPid)
		FUNC2(ERROR,
				(FUNC4("only one reader allowed for TimescaleDB background worker message queue"),
				 FUNC3("Current process is %d", reader_pid)));
}