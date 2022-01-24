#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ num_elements; size_t read_upto; int /*<<< orphan*/  lock; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ MessageQueue ;
typedef  int /*<<< orphan*/  BgwMessage ;

/* Variables and functions */
 int BGW_MQ_MAX_MESSAGES ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static BgwMessage *
FUNC7(MessageQueue *queue)
{
	BgwMessage *message = NULL;

	FUNC0(queue->lock, LW_EXCLUSIVE);
	if (FUNC6(queue) != MyProcPid)
		FUNC2(ERROR,
				(FUNC3(
					"cannot read if not reader for TimescaleDB background worker message queue")));

	if (queue->num_elements > 0)
	{
		message = FUNC5(sizeof(BgwMessage));
		FUNC4(message, &queue->buffer[queue->read_upto], sizeof(BgwMessage));
		queue->read_upto = (queue->read_upto + 1) % BGW_MQ_MAX_MESSAGES;
		queue->num_elements--;
	}
	FUNC1(queue->lock);
	return message;
}