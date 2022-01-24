#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  shm_mq_handle ;
typedef  int /*<<< orphan*/  shm_mq ;
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_5__ {int /*<<< orphan*/  ack_dsm_handle; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  BgwMessageType ;
typedef  TYPE_1__ BgwMessage ;

/* Variables and functions */
 int /*<<< orphan*/  BGW_ACK_QUEUE_SIZE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MyProc ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  mq ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

extern bool
FUNC11(BgwMessageType message_type, Oid db_oid)
{
	shm_mq *ack_queue;
	dsm_segment *seg;
	shm_mq_handle *ack_queue_handle;
	BgwMessage *message;
	bool ack_received = false;

	message = FUNC0(message_type, db_oid);

	seg = FUNC2(message->ack_dsm_handle);
	if (seg == NULL)
		FUNC5(ERROR,
				(FUNC6("TimescaleDB background worker dynamic shared memory segment not mapped")));
	ack_queue = FUNC9(FUNC3(seg), BGW_ACK_QUEUE_SIZE);
	FUNC10(ack_queue, MyProc);
	ack_queue_handle = FUNC8(ack_queue, seg, NULL);
	if (ack_queue_handle != NULL)
		ack_received = FUNC4(mq, message, ack_queue_handle);
	FUNC1(seg); /* Queue detach happens in dsm detach callback */
	FUNC7(message);
	return ack_received;
}