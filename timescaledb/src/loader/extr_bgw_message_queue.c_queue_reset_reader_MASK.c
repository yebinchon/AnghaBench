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
struct TYPE_3__ {scalar_t__ reader_pid; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ MessageQueue ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidPid ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(MessageQueue *queue)
{
	volatile MessageQueue *vq = queue;
	bool reset = false;

	FUNC0(&vq->mutex);
	if (vq->reader_pid == MyProcPid)
	{
		reset = true;
		vq->reader_pid = InvalidPid;
	}
	FUNC1(&vq->mutex);

	if (!reset)
		FUNC2(ERROR,
				(ERRCODE_INTERNAL_ERROR,
				 FUNC4("multiple TimescaleDB background worker launchers have been started when "
						"only one is allowed"),
				 FUNC3("This is a bug, please report it on our github page.")));
}