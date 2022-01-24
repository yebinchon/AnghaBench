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
typedef  scalar_t__ shm_mq_result ;
typedef  int /*<<< orphan*/  shm_mq_handle ;
typedef  scalar_t__ Size ;
typedef  scalar_t__ QueueResponseType ;
typedef  int /*<<< orphan*/  MessageQueue ;
typedef  int /*<<< orphan*/  BgwMessage ;

/* Variables and functions */
 int BGW_ACK_RETRIES ; 
 int /*<<< orphan*/  BGW_ACK_WAIT_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ MESSAGE_SENT ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHM_MQ_SUCCESS ; 
 scalar_t__ SHM_MQ_WOULD_BLOCK ; 
 int /*<<< orphan*/  WAIT_EVENT_MQ_INTERNAL ; 
 int WL_LATCH_SET ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__*,void**,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC8(MessageQueue *queue, BgwMessage *message,
							 shm_mq_handle *ack_queue_handle)
{
	Size bytes_received = 0;
	QueueResponseType send_result;
	bool *data = NULL;
	shm_mq_result mq_res;
	bool ack_received = false;
	int n;

	/*
	 * We don't want the process restarting workers to really distinguish the
	 * reasons workers might or might not be restarted, and we don't really
	 * want them to error when workers can't be started, as there are multiple
	 * valid reasons for that. So we'll simply return false for the ack even
	 * if we can't attach to the queue etc.
	 */
	send_result = FUNC5(queue, message);
	if (send_result != MESSAGE_SENT)
		return false;

	mq_res = FUNC7(queue, ack_queue_handle);
	if (mq_res != SHM_MQ_SUCCESS)
		return false;

	/* Get a response, non-blocking, with retries */
	for (n = 1; n <= BGW_ACK_RETRIES; n++)
	{
		mq_res = FUNC6(ack_queue_handle, &bytes_received, (void **) &data, true);
		if (mq_res != SHM_MQ_WOULD_BLOCK)
			break;
		FUNC3(DEBUG1, (FUNC4("TimescaleDB ack message receive failure, retrying")));
#if PG96
		WaitLatch(MyLatch, WL_LATCH_SET | WL_TIMEOUT, BGW_ACK_WAIT_INTERVAL);
#else
		FUNC2(MyLatch,
				  WL_LATCH_SET | WL_TIMEOUT,
				  BGW_ACK_WAIT_INTERVAL,
				  WAIT_EVENT_MQ_INTERNAL);
#endif
		FUNC1(MyLatch);
		FUNC0();
	}

	if (mq_res != SHM_MQ_SUCCESS)
		return false;

	ack_received = (bytes_received != 0) && *data;

	return ack_received;
}